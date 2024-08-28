-- Name: MapSwapLlama
-- Process ID: h4v-V8QM4kb8fUuPuX27g1gnPpm1pHyy-kZ0Jas5Cpk  (MapSwapLlama)

WORLD_PID = "aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ"

TILEMAP0_TXID = "koH7Xcao-lLr1aXKX4mrcovf37OWPlHW76rPQEwCMMA" -- default
TILEMAP1_TXID = "l4J4jOFKhCtkXqlpXfVfVOmO3tm9vJYRs6--F_9Vatw" -- new tilemap 1
TILEMAP2_TXID = "h1aX8BfSiQ-ZHhxUB1RBv2YVhMiYyzihdKtf4zoiOyY" -- new tilemap 2

local json = require('json')

-- To add this agent to your world, configure your Static Entities table, e.g.:
-- RealityEntitiesStatic = {
--   ['<your agent process Id>'] = {
--     Position = { 10, 10 },
--     Type = 'Avatar',
--     Metadata = {
--       DisplayName = 'Map Swap Llama',
--       Interaction = {
--           Type = 'SchemaForm',
--           Id = 'ChangeTileMap'
--       },
--       SpriteTxId = 'wNRKKsMPLJaNaTFswhst5zgIhVapByv-olwFIZnDuv0'
--     },
--   },
-- }

-- -- Schema

-- use this if you want to enter a custom map
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
      "const": "Custom Map"
    },
    "X-Custom": {
        "type": "string",
        "minLength": 43,
        "maxLength": 43,
        "title": "Custom",
        "description": "tx_id of custom TileMap"
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
      "enum": ["Default Map", "New Map 1", "New Map 2"]
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
            ChangeTileMap = {
                Title = "Oi",
                Description = "Pick ya map pack",
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
            ['Author-Name'] = 'Map Swapper'
        },
        Data = "Map: " .. message
    })

end

Handlers.add('Tilemap 0', Handlers.utils.hasMatchingTag('Action', 'Default Map'), function(msg)

    sendChatMessage('Default Map')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileMap'
        },
        Data = TILEMAP0_TXID
    })

end)
Handlers.add('Tilemap 1', Handlers.utils.hasMatchingTag('Action', 'New Map 1'), function(msg)

    sendChatMessage('New Map 1')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileMap'
        },
        Data = TILEMAP1_TXID
    })

end)
Handlers.add('Tilemap 2', Handlers.utils.hasMatchingTag('Action', 'New Map 2'), function(msg)

    sendChatMessage('New Map 2')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileMap'
        },
        Data = TILEMAP2_TXID
    })

end)


Handlers.add('Custom Map', Handlers.utils.hasMatchingTag('Action', 'Custom Map'), function(msg)

    sendChatMessage('Custom Map')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeTileMap'
        },
        Data = msg.Tags['X-Custom']
    })

end)

