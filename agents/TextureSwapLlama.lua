-- Name: TextureSwapLlama
-- Process ID: OORcTn1Wgyg0-ymYvSKEJIVXYP19MYn33AmRnDGWmgc  (TextureSwapLlama)

WORLD_PID = "aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ"

TILESET0_TXID = "h5Bo-Th9DWeYytRK156RctbPceREK53eFzwTiKi0pnE" -- default
TILESET1_TXID = "rqJMz1Glna8Htu7lYUZQy52vhTmkWVAzuKKFdof1fQU" -- new tileset 1
TILESET2_TXID = "9OCdNVIwEiN8Pnv0jX7vYgd4zDEmVNmbRXF3TTLy5wU" -- gameboy style
TILESET3_TXID = "14Px9242S4Z3gYepe8YK_I-c6je6hww26qkSPRA0_38" -- gameboy color style
TILESET4_TXID = "7YTI6BAW-5IeFSaM6oP0AzR9EK8Fu_-x8800D03VhS8" -- virtualboy style

local json = require('json')

-- To add this agent to your world, configure your Static Entities table, e.g.:
-- RealityEntitiesStatic = {
--   ['<your agent process Id>'] = {
--     Position = { 10, 10 },
--     Type = 'Avatar',
--     Metadata = {
--       DisplayName = 'Texture Swap Llama',
--       Interaction = {
--           Type = 'SchemaForm',
--           Id = 'ChangeTileSet'
--       },
--       SpriteTxId = 'YMcTXZPfe7RyV3B2ACUB0JVXfLYRHbH3EGaggglvkS4'
--     },
--   },
-- }

-- -- Schema

-- use this if you want to enter a custom tile set
function DJSchemaTagsCustom()
    return [[
{
  "type": "object",
  "required": [
    "Action",
    "X-Custom"
  ],
  "properties": {
    "Action": {
      "type": "string",
      "const": "Custom Tiles"
    },
    "X-Custom": {
        "type": "string",
        "minLength": 43,
        "maxLength": 43,
        "title": "Custom",
        "description": "tx_id of custom TileSet"
    },
  }
}
]]
end

-- use this if you want a drop down menu of choices
function DJSchemaTags()
    return [[
{
  "type": "object",
  "required": [
    "Action"
  ],
  "properties": {
    "Action": {
      "type": "string",
      "enum": ["Default Textures", "New Texture Pack", "Gameboy Style", "Gameboy Color Style", "Virtualboy Style"]
    }
  }
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
            ChangeTileSet = {
                Title = "Oi",
                Description = "Pick ya texture pack",
                Schema = {
                    Tags = json.decode(DJSchemaTags())
                    -- Tags = json.decode(DJSchemaTagsCustom())
                    -- Data
                    -- Result?
                }
            }
        })
    })

end)

local function sendChatMessage(message)

    print("message:")
    print(message)

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChatMessage',
            ['Author-Name'] = 'Texture Swapper'
        },
        Data = "Texture: " .. message
    })

end

Handlers.add('Tileset 0', Handlers.utils.hasMatchingTag('Action', 'Default Textures'), function(msg)

    sendChatMessage('Default Textures')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileSet'
        },
        Data = TILESET0_TXID
    })

end)
Handlers.add('Tileset 1', Handlers.utils.hasMatchingTag('Action', 'New Texture Pack'), function(msg)

    sendChatMessage('New Texture Pack')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileSet'
        },
        Data = TILESET1_TXID
    })

end)
Handlers.add('Tileset 2', Handlers.utils.hasMatchingTag('Action', 'Gameboy Style'), function(msg)

    sendChatMessage('Gameboy Style')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileSet'
        },
        Data = TILESET2_TXID
    })

end)
Handlers.add('Tileset 3', Handlers.utils.hasMatchingTag('Action', 'Gameboy Color Style'), function(msg)

    sendChatMessage('Gameboy Color Style')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileSet'
        },
        Data = TILESET3_TXID
    })

end)
Handlers.add('Tileset 4', Handlers.utils.hasMatchingTag('Action', 'Virtualboy Style'), function(msg)

    sendChatMessage('Virtualboy Style')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileSet'
        },
        Data = TILESET4_TXID
    })

end)


Handlers.add('Custom Tiles', Handlers.utils.hasMatchingTag('Action', 'Custom Tiles'), function(msg)

    sendChatMessage('Custom Tiles')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileSet'
        },
        Data = msg.Tags['X-Custom']
    })

end)