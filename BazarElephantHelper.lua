-- Name: BazarElephantHelper
-- Process ID: CnR11D0nJGZnZ8ViWQYkc09tdOyT4kpvBYFwySVI_1U  (BazarElephantHelper)
local json = require('json')

-- To add this agent to your world, configure your Static Entities table, e.g.:
-- RealityEntitiesStatic = {
--   ['<your agent process Id>'] = {
--     Position = { 10, 10 },
--     Type = 'Avatar',
--     Metadata = {
--       DisplayName = 'Bazar Elephant Helper',
--       Interaction = {
--         Type = 'SchemaForm',
--         Id = 'Welcome'
--       },
--       SpriteTxId = '4t5DeysvzcswHQtvV2USgclli2ScR3XajEZPcqYLX5o'
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
        "maximum": 21,
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
                "description": "Click through this catalogue to view the links for all the art of the elephant sprites."
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
                "title": "Embassy Elephant (me)",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/IEcANJQaJ7TUUxWjpN64dgQGMuczMuUwRKUHDRf6aNc"
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
                "title": "Elephunk (Welcome Elephant)",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/xIaFhGHdInzN0oCVAN9v2_jn7fQHbTltbARfvQ1tHqM"
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
                "title": "Yellow Elephant (Map Swapper)",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/8F46qotZgx-WuNCToSRyKrODS87MG9FH1KWB358RzUk"
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
                "title": "Bad Dum (Texture Swapper)",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/Q_ByPYDwWxNIopBI_axVEuexrx39N2jJJ7Yxk66McOs"
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
                "title": "Sitting Elephant 1",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/F1_yolIlboHXGKSGbyGbsfK_Tnnq6tPQQhKgQgEgwIk"
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
                "title": "Sitting Elephant 2",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/WaHMLPfufbqZGwQLuK7tso6YTLDsPykXQ4jzK2jPdHg"
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
                "title": "Tough Elephant 1",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/R0DFMDD8Wh_LqoGfGrz_n_amVZjd7FgkT_-xpExmxkw"
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
                "title": "Tough Elephant 2",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/pPwLX3XvBLSDaIHxLb09-_33G0hhJhtMDMKxp1dQYBY"
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
                "title": "Training Elephant",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/T_MvwMMNUmhUP5kX1WUSgS55hhvkVTN-yUNOTfdtU7g"
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
                "title": "Robot Elephant",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/PCO-VgNuWCAX9cNMB4DSOcIfmnsPqgsvAPoKOrlsNuU"
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
                "title": "Farmer Elephant",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/d9SyIbcTDqHLZjIPmT6OrjP68pscS4tD_7a-bvy6x7E"
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
                "title": "Business Elephant 1",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/qvQFpjHwIcXeCR2SiXif52o3gGIY4j0JV0ZUO0nRFD4"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 14 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Business Elephant 2",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/zzed3KsPBhWTwUnebSxxIUsqZXSksU2loLfNVF7FvGs"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 15 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Agent Elephant 1",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/ip5K9Rx2vVyObjgMD9DVGTH3xBi_Tfczdy0F45lGvI0"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 16 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Agent Elephant 2",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/p8-CWoeizetb559JGIVapHu77bAc5u5OgPhHswAlTx4"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 17 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Agent Elephant 3",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/fv-q6KUP0-QGRjjQTZjUMf6zGJQuZ_GdXSa_mf4Qnc8"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 18 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Space Elephant",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/hNN6fQ8IYrRz-xYYlJrRjHWWMC7xlTe-GBAsJZgXp6M"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 19 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Speaker Facing Left",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/LMA5300iihipe4qDB6727NKera7fU3xspCXabJ_PlgQ"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 20 } }
          },
          "then": {
            "properties": {
              "Content4": {
                "type": "null",
                "title": "Speaker Facing Right",
                "description": "Visit: https://ao-bazar.aoweave.tech/#/asset/F91-FrrhcW3wBPC_QI-W_Z9iUBY8yc9IblZuruj0vkQ"
              }
            }
          }
        },
        {
          "if": {
            "properties": { "Page": { "const": 21 } }
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
                Description = "Select a page to browse sprites",
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

