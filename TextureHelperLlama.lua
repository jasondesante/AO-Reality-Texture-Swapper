-- Name: TextureHelperLlama
-- Process ID: LDzs4KyhR0KBnpqdc99f1ar_FL-cwxX53IFFgNqsW_A  (TextureHelperLlama)
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
--       SpriteTxId = 'tQ6Wei61-zeTtsylxfvZFgWiSsiPfkgTuJbtnVAfb2g'
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
        "maximum": 13,
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
                "description": "Click through this catalogue of textures and maps viewable on Bazar and Arweave."
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
              "Content4": {
                "type": "null",
                "title": "New Textures",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/2X-nR0311fGczOy53P8GbICJ4SiViI_EvqhOlHZlE9Y"
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
              "Content4": {
                "type": "null",
                "title": "New Textures Gameboy",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/FdHRKJS2L_SNCFK0wgiuveHTpcdQwrwzS9ntykL4eMc"
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
              "Content4": {
                "type": "null",
                "title": "New Textures Gameboy Color",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/M0vGGrseyA7ielaSN0YZlal_Km9if0k0tNDdHIKAqew"
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
                "title": "New Textures Virtualboy",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/YyaR8KkWveMF-9lc-2BydVBhHoBtnMdiVxlkiGLdSp0"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 6 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "New Map 2",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/zHa4OFBQsVaajPYY0eJrJty8GgQ1P4LDGfFQnKj-GSs"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 7 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "New Map 3",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/7uySQCt4ym9-lwcVHsU366iT-ZhV1N35fIV71k72zYA"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 8 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Try it!",
                "description": "All these art assets will work plug and play with the current version of Reality! Enjoy!"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 9 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Step 1 - Modify World",
                "description": "In your WorldTemplate you must modify the world to have handlers that listen for ChangeTileSet and ChangeTileMap so you can change both things.  Example code at process id aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 10 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Step 2 - Create process to change textures (tile set)",
                "description": "Gather the tile sets you want to use in the selector and load them up into a process that lets you choose.  Send that message to the world process to change the tile set. Example code at process id OORcTn1Wgyg0-ymYvSKEJIVXYP19MYn33AmRnDGWmgc"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 11 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Step 3 - Create process to change map",
                "description": "Gather the maps you want to use in the selector and load them up into a process that lets you choose.  Send that message to the world process to change the tile map. Example code at process id h4v-V8QM4kb8fUuPuX27g1gnPpm1pHyy-kZ0Jas5Cpk"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 12 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Step 4 - Place the agents in the world",
                "description": "Find a spot to put your settings agents in the world.  You can also put a door to reload the world right next to the agents to quickly apply the changed settings.  Example code at process id aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 13 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Enjoy your new abilities!",
                "description": "Congratulations! Your world now has the optional ability to change its tile set and tile map unlocking new capabilities!  For example a growing list of alternate texture packs that mimic the structure of the default pack means you can toggle through a large list of fun stuff, and maps made with that default tile set will all work with that large amount of similar tile sets.  Achieving a large list of compatible stuff."
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

