-- Name: TextureWelcomeLlama
-- Process ID: bGDwsmKpxxiTf-2zgRFNQ1rQAo88h0k8dt6dv-t45r8  (TextureWelcomeLlama)
local json = require('json')

-- To add this agent to your world, configure your Static Entities table, e.g.:
-- RealityEntitiesStatic = {
--   ['<your agent process Id>'] = {
--     Position = { 10, 10 },
--     Type = 'Avatar',
--     Metadata = {
--       DisplayName = 'Texture Helper Llama',
--       Interaction = {
--         Type = 'SchemaForm',
--         Id = 'Welcome'
--       },
--       SpriteTxId = 'sw4LtXrYLU1-A1tI6D-SyhfOK3G9IEbfuMMvDnPrppI'
--     },
--   },
-- }



-- Schema
function TestSchemaTags()
    return [[
{
  "type": "object",
  "required": [
    "Action"
  ],
  "properties": {
    "Action": {
      "type": "string",
      "const": "Welcome"
    },
    "Page": {
        "type": "number",
        "default": 1,
        "minimum": 1,
        "maximum": 5,
        "title": "Select Page",
        "$comment": "]] .. 1 .. [["
    }
    },
    "allOf": [
        {
          "if": {
            "properties": { "Page": { "const": 1 } }
          },
          "then": {
            "properties": {
              "Content1": {
                "type": "null",
                "title": "Welcome!",
                "description": "This world shows you the power of changing textures and maps."
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 2 } }
          },
          "then": {
            "properties": {
              "Content2": {
                "type": "null",
                "title": "Change the graphics",
                "description": "Talk to the texture swapper to change the tileset, then reload the world to see the changes."
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 3 } }
          },
          "then": {
            "properties": {
              "Content3": {
                "type": "null",
                "title": "Change the map",
                "description": "Talk to the map swapper to change the tilemap, then reload the world to see the changes."
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 4 } }
          },
          "then": {
            "properties": {
              "Content3": {
                "type": "null",
                "title": "Check out the elephants, textures and maps!",
                "description": "View the catalogue of custom elephant characters and textures that you can add to your own world too!"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 5 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Try it!",
                "description": "It's really that easy! Give it a try! Also check out the GitHub page here: https://github.com/jasondesante/AO-Reality-Texture-Swapper"
              }
            }
          }
        }
      ]
}
]]
end


Handlers.add('Schema', Handlers.utils.hasMatchingTag('Action', 'Schema'), function(msg)
    print('Schema')

    ao.send({
        Target = msg.From,
        Tags = {
            Type = 'Schema'
        },
        Data = json.encode({
            Welcome = {
                Description = "Select a page to read information",
                Schema = {
                    Tags = json.decode(TestSchemaTags())
                }
            }
        })
    })

end)

Handlers.add('Welcome', Handlers.utils.hasMatchingTag('Action', 'Welcome'), function(msg)
  -- print(msg.Tags)
  -- print(msg)
  print("ayo?")
end)

