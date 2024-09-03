-- Name: CharacterSwapLlama
-- Process ID: JDzwuZ1DwhWHFE0u-AwbVTwFchU0fTtiVCLTkIKiMlk  (CharacterSwapLlama)

WORLD_PID = "aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ"

CHARACTER_0_TXID = "DZD1iQjfaqDrbSfgj4qK-IAKYDNayn3-5I4VkeYWSMk" -- default
CHARACTER_1_TXID = 'gGsya4ddvxscUnXFo-7XYz2-dT_OhaDZcvTToLPuVsM' -- Wizard 2 Nalgene
CHARACTER_2_TXID = 'hOlnHzdk8rVj-BgJNoNf2UryIDd-Jept87887kD6Cwk' -- Wizard 7246 Giveahoot
CHARACTER_3_TXID = 'jTDMJ_VsfCgfWeINHmSGNkiP3tIDqEHo0HM02m2HaXk' -- Wizard 8728 J of the sun
CHARACTER_4_TXID = 'Un_Cx9ULMFRkxEmWxUCN7Bvebc02LCQpaEfUnQ5Tf7U' -- Wizard 722 Mage Willow

local json = require('json')

-- To add this agent to your world, configure your Static Entities table, e.g.:
-- RealityEntitiesStatic = {
--   ['<your agent process Id>'] = {
--     Position = { 10, 10 },
--     Type = 'Avatar',
--     Metadata = {
--       DisplayName = 'Character Select',
--       Interaction = {
--           Type = 'SchemaForm',
--           Id = 'ChangeCharacter'
--       },
--       SpriteTxId = 'jTDMJ_VsfCgfWeINHmSGNkiP3tIDqEHo0HM02m2HaXk'
--     },
--   },
-- }

-- -- Schema

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
      "enum": ["Default Llama", "Nalgene", "Giveahoot", "J of the Sun", "Mage Willow"]
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
            ChangeCharacter = {
                Title = "Hi",
                Description = "Choose a character",
                Schema = {
                    Tags = json.decode(DJSchemaTags())
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
            ['Author-Name'] = 'Character Swapper'
        },
        Data = "Character: " .. message
    })

end

Handlers.add('Character 0', Handlers.utils.hasMatchingTag('Action', 'Default Llama'), function(msg)

    sendChatMessage('Default Llama')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeCharacter'
        },
        Data = CHARACTER_0_TXID
    })

end)
Handlers.add('Character 1', Handlers.utils.hasMatchingTag('Action', 'Nalgene'), function(msg)

    sendChatMessage('Nalgene')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeCharacter'
        },
        Data = CHARACTER_1_TXID
    })

end)
Handlers.add('Character 2', Handlers.utils.hasMatchingTag('Action', 'Giveahoot'), function(msg)

    sendChatMessage('Giveahoot')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeCharacter'
        },
        Data = CHARACTER_2_TXID
    })

end)
Handlers.add('Character 3', Handlers.utils.hasMatchingTag('Action', 'J of the Sun'), function(msg)

    sendChatMessage('J of the Sun')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeCharacter'
        },
        Data = CHARACTER_3_TXID
    })

end)
Handlers.add('Character 4', Handlers.utils.hasMatchingTag('Action', 'Mage Willow'), function(msg)

    sendChatMessage('Mage Willow')

    Send({
        Target = WORLD_PID,
        Tags = {
            Action = 'ChangeCharacter'
        },
        Data = CHARACTER_4_TXID
    })

end)
