local classicDungeons = {
    ['Ragefire Chasm'] = {
        level = {
            text = '13 - 18',
            min = 13,
            max = 18,
        },
        status = 'Horde',
        notes = 'Dungeon',
    },
    ['Wailing Caverns'] = {
        level = {
            text = '15 - 25',
            min = 15,
            max = 25,
        },
        status = 'Horde',
        notes = 'Dungeon',
    },
    ['The Deadmines'] = {
        level = {
            text = '18 - 23',
            min = 18,
            max = 23,
        },
        status = 'Alliance',
        notes = 'Dungeon',
    },
    ['Shadowfang Keep'] = {
        level = {
            text = '22 - 30',
            min = 22,
            max = 30,
        },
        status = 'Horde',
        notes = 'Dungeon',
    },
    ['The Stockade'] = {
        level = {
            text = '22 - 30',
            min = 22,
            max = 30,
        },
        status = 'Horde',
        notes = 'Dungeon',
    },
    ['Blackfathom Deeps'] = {
        level = {
            text = '24 - 32',
            min = 24,
            max = 32,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['Gnomeregan'] = {
        level = {
            text = '29 - 38',
            min = 29,
            max = 38,
        },
        status = 'Alliance',
        notes = 'Dungeon',
    },
    ['Razorfen Kraul'] = {
        level = {
            text = '30 - 40',
            min = 30,
            max = 40,
        },
        status = 'Horde',
        notes = 'Dungeon',
    },
    ['Scarlet Monastery'] = {
        level = {
            text = '26 - 45',
            min = 26,
            max = 45,
        },
        status = 'Horde',
        notes = 'Dungeon',
    },
    ['Razorfen Downs'] = {
        level = {
            text = '40 - 50',
            min = 40,
            max = 50,
        },
        status = 'Horde',
        notes = 'Dungeon',
    },
    ['Uldaman'] = {
        level = {
            text = '42 - 52',
            min = 42,
            max = 52,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['Zul\'Farrak'] = {
        level = {
            text = '44 - 54',
            min = 44,
            max = 54,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['Maraudon'] = {
        level = {
            text = '46 - 55',
            min = 46,
            max = 55,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['The Temple of Atal\'Hakkar'] = {
        level = {
            text = '50 - 60',
            min = 50,
            max = 60,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['Blackrock Depths'] = {
        level = {
            text = '52 - 60',
            min = 52,
            max = 60,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['Blackrock Spire'] = {
        level = {
            text = '55 - 60',
            min = 55,
            max = 60,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['Scholomance'] = {
        level = {
            text = '58 - 60',
            min = 58,
            max = 60,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['Stratholme'] = {
        level = {
            text = '58 - 60',
            min = 58,
            max = 60,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
    ['Dire Maul'] = {
        level = {
            text = '58 - 60',
            min = 58,
            max = 60,
        },
        status = 'Contested',
        notes = 'Dungeon',
    },
}

-- Function for finding a dungeon zone
function BetterZoneStats:FindDungeon(subzone, zone)
    -- Check for the zone 
    local fDungeon = classicDungeons[zone]
    -- If we found a dungeon
    if fDungeon ~= nil then
        -- Return the dungeon details
        return fDungeon
    else
        -- Check if the player is in a raid zone
        return self:FindRaid(subzone, zone)
    end
end