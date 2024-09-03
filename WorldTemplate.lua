-- 
-- texture pack test World 1 - "aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ"
-- 

-- #region Model
RealityInfo = {
    Dimensions = 2,
    Name = 'ExampleReality',
    ['Render-With'] = '2D-Tile-0'
}

RealityParameters = {
    ['2D-Tile-0'] = {
        Version = 0,
        -- PlayerSpriteTxId = 'DZD1iQjfaqDrbSfgj4qK-IAKYDNayn3-5I4VkeYWSMk', -- Wizard 7246
        Spawn = {5, 7},
        -- This is a tileset themed to Llama Land main island
        Tileset = {
            Type = 'Fixed',
            Format = 'PNG',
            TxId = 'h5Bo-Th9DWeYytRK156RctbPceREK53eFzwTiKi0pnE' -- TxId of the old tileset in PNG format
        },
        -- This is a tilemap of sample small island
        Tilemap = {
            Type = 'Fixed',
            Format = 'TMJ',
            TxId = 'koH7Xcao-lLr1aXKX4mrcovf37OWPlHW76rPQEwCMMA' -- TxId of the old tilemap in TMJ format
        },
        Format = 'PNG'
    },

    -- ['Audio-0'] = {
    --     Bgm = {
    --         Type = 'Fixed',
    --         Format = 'WAV',
    --         TxId = '3GROIrEba4lDI2EWVf6UK4Hf8frum9xI0z_3BuLp044'
    --     }
    -- }

}

RealityEntitiesStatic = {

    -- Texture Swap Llama 
    ['OORcTn1Wgyg0-ymYvSKEJIVXYP19MYn33AmRnDGWmgc'] = {
        Position = {15, 11},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Texture Swapper',
            Interaction = {
                Type = 'SchemaForm',
                Id = 'ChangeTileSet'
            },
            SpriteTxId = 'YMcTXZPfe7RyV3B2ACUB0JVXfLYRHbH3EGaggglvkS4' -- bad dum
        }
    },


    -- Map Swap Llama 
    ['h4v-V8QM4kb8fUuPuX27g1gnPpm1pHyy-kZ0Jas5Cpk'] = {
        Position = {15, 9},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Map Swapper',
            Interaction = {
                Type = 'SchemaForm',
                Id = 'ChangeTileMap'
            },
            SpriteTxId = 'wNRKKsMPLJaNaTFswhst5zgIhVapByv-olwFIZnDuv0' -- Yellow elephant 1
        }
    },

    -- Character Swap Llama
    ['JDzwuZ1DwhWHFE0u-AwbVTwFchU0fTtiVCLTkIKiMlk'] = {
        Position = {5, 11},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Character Select',
            Interaction = {
                Type = 'SchemaForm',
                Id = 'ChangeCharacter'
            },
            SpriteTxId = 'jTDMJ_VsfCgfWeINHmSGNkiP3tIDqEHo0HM02m2HaXk'
        }
    },


    -- TextureWelcomeLlama
    ['bGDwsmKpxxiTf-2zgRFNQ1rQAo88h0k8dt6dv-t45r8'] = {
        Position = {9, 8},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Welcome',
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Welcome'
            },
            SpriteTxId = 'sw4LtXrYLU1-A1tI6D-SyhfOK3G9IEbfuMMvDnPrppI' -- Elephunk
        }
    },

    -- TextureHelperLlama
    ['LDzs4KyhR0KBnpqdc99f1ar_FL-cwxX53IFFgNqsW_A'] = {
        Position = {15, 7},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Texture Helper',
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Welcome'
            },
            SpriteTxId = 'tQ6Wei61-zeTtsylxfvZFgWiSsiPfkgTuJbtnVAfb2g' -- agent elephant 1
        }
    },

    -- BazarElephantHelper
    ['CnR11D0nJGZnZ8ViWQYkc09tdOyT4kpvBYFwySVI_1U'] = {
        Position = {5, 9},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Elephant Helper',
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Welcome'
            },
            SpriteTxId = '4t5DeysvzcswHQtvV2USgclli2ScR3XajEZPcqYLX5o' -- Embassy Elephant 1
        }
    },


    ['Cave_Exit'] = {
        Position = {9, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'reload world',
            SpriteTxId = 'VHEU8C0hdLoML5jlYO6aF21mvaoaWjb7JyFX6quO8W4', -- door
            Interaction = {
                Target = "aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ", -- this texture pack test world
                Position = {12, 12},
                Type = 'Warp',
                Size = {1, 1}
            }
        }
    },


    -- Extra NPCs ---------------------
    ['Extra Llama 1'] = {
        Position = {2, 2},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = 'x5u8xowBksMGqDsZ_S_ZfIK1BHi343nglqgas2tDQ1g' -- space elephant 1
        }
    },
    ['Extra Llama 2'] = {
        Position = {4, 10},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = 'DPmoHej-1lJEcUiSpCZRP9ZFscfv572upJUp1ah4N-M' -- sitting elephant 2
        }
    },
    ['Extra Llama 3'] = {
        Position = {4, 8},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = '1wpYb7s-Oq5GYyeAbumKgabfyOeB59WlZi9VQxLo7B4' -- sitting elephant 1
        }
    },
    ['Extra Llama 4'] = {
        Position = {4, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = 'CdEMhy_NDjzIsKhWHDpym_xG1ukv9UU2RGfGJ4Dzu8U' -- tough elephant 2
        }
    },
    ['Extra Llama 5'] = {
        Position = {5, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = 'FvQQCqdj7Y9ytF_HPIfiegFwVVMpGGKZ76PLLesqqm8' -- tough elephant 1

        }
    },
    ['Extra Llama 6'] = {
        Position = {6, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = '_ChsHVA7nwPRwUzlT3OchN7eNv-HcWgBtuc9_Tr_3_I' -- training elephant 1
        }
    },

    ['Extra Llama 9'] = {
        Position = {8, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = 'ZRj0Gmpv9dOOAZjamcOR2wtPrjnUjuPDf9Wp2VyPo3U' -- robot elephant 1
        }
    },
    ['Extra Llama 10'] = {
        Position = {10, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = 'PCfS0pFc3b7dMjrivDV5Ua78xp8wC6gqex8g2ikHB-0' -- farmer elephant 1
        }
    },

    ['Extra Llama 12'] = {
        Position = {12, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = 'vbj5YMTuOSBozSxzPWfuWO-Nks_cQ6S_GSlTuHXB6ig' -- business elephant 2
        }
    },
    ['Extra Llama 13'] = {
        Position = {13, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = 'Tj4NtbLRZZ0krKUk9u82uHNy-N8FYTYXtf3TBrRAfZk' -- business elephant 2
        }
    },


    ['Extra Llama 14'] = {
        Position = {14, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = '11YUUYBkSEErLSGA3OGTC-OPcNb4ZVdGLgLZMO863iw' -- agent elephant 3
        }
    },
    ['Extra Llama 11'] = {
        Position = {15, 6},
        Type = 'Avatar',
        Metadata = {
            DisplayName = '',
            Interaction = {
                Type = 'Default',
            },
            SpriteTxId = '__qg3RIK_wGsMiPhu3YZpcoiCjSVWMR34yqi3u4vp-s' -- agent elephant 2
        }
    },


    -- Warps --------------------
    ['Cave_Exit2'] = {
        Position = {22, 55},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Ayo',
            SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s', -- empty space
            -- SpriteTxId = 'VHEU8C0hdLoML5jlYO6aF21mvaoaWjb7JyFX6quO8W4', -- door
            Interaction = {
                Target = "aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ", -- current world
                Position = {7, 9},
                Type = 'Warp',
                Size = {1, 1}
            }
        }
    },
    ['Cave_Exit3'] = {
        Position = {63, 12},
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Ayo',
            SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s', -- empty space
            -- SpriteTxId = 'VHEU8C0hdLoML5jlYO6aF21mvaoaWjb7JyFX6quO8W4', -- door
            Interaction = {
                Target = "aIVRiraf1ZmfSz32O2OTW58h9b9VyN6ocwgUPR3TihQ", -- current world
                Position = {7, 9},
                Type = 'Warp',
                Size = {1, 1}
            }
        }
    }

}

-- #endregion

-- Handlers.add('ChangeSong', Handlers.utils.hasMatchingTag('Action', 'ChangeSong'), function(msg)
--     print('ChangeSong')
--     print('msg.Data:')
--     print(msg.Data)
--     print('msg.Data type:')
--     print(type(msg.Data))

--     if type(msg.Data) == 'string' and #msg.Data > 0 then
--         RealityParameters['Audio-0'].Bgm.TxId = tostring(msg.Data)
--         print('Updated TxId to:')
--         print(RealityParameters['Audio-0'].Bgm.TxId)
--     else
--         print('Invalid data provided for TxId.')
--     end
-- end)

Handlers.add('ChangeTileSet', Handlers.utils.hasMatchingTag('Action', 'ChangeTileSet'), function(msg)
    print('ChangeTileSet')

    if type(msg.Data) == 'string' and #msg.Data > 0 then
        RealityParameters['2D-Tile-0'].Tileset.TxId = tostring(msg.Data)
        print('Updated TxId to:')
        print(RealityParameters['2D-Tile-0'].Tileset.TxId)
    else
        print('Invalid data provided for TxId.')
    end
end)


Handlers.add('ChangeTileMap', Handlers.utils.hasMatchingTag('Action', 'ChangeTileMap'), function(msg)
    print('ChangeTileMap')

    if type(msg.Data) == 'string' and #msg.Data > 0 then
        RealityParameters['2D-Tile-0'].Tilemap.TxId = tostring(msg.Data)
        print('Updated TxId to:')
        print(RealityParameters['2D-Tile-0'].Tilemap.TxId)
    else
        print('Invalid data provided for TxId.')
    end
end)


Handlers.add('ChangeCharacter', Handlers.utils.hasMatchingTag('Action', 'ChangeCharacter'), function(msg)
    print('ChangeCharacter')

    if type(msg.Data) == 'string' and #msg.Data > 0 then
        RealityParameters['2D-Tile-0'].PlayerSpriteTxId = tostring(msg.Data)
        print('Updated TxId to:')
        print(RealityParameters['2D-Tile-0'].PlayerSpriteTxId)
    else
        print('Invalid data provided for TxId.')
    end
end)

return print("Loaded Reality Template")
