local classicZones = {
    ['Elwynn Forest'] = {
        level = {
            text = '1 - 10',
            min = 1,
            max = 10,
        },
        status = 'Alliance',
        notes = 'Starting Zone',
    },
    ['Dun Morogh'] = {
        level = {
            text = '1 - 10',
            min = 1,
            max = 10,
        },        
        status = 'Alliance',
        notes = 'Starting Zone',
    },
    ['Tirisfal Glades'] = {
        level = {
            text = '1 - 10',
            min = 1,
            max = 10,
        },
        status = 'Horde',
        notes = 'Starting Zone',
    },
    ['Loch Modan'] = {
        level = {
            text = '10 - 20',
            min = 10,
            max = 20,
        },
        status = 'Alliance',
        notes = 'Dwarf Favored',
    },
    ['Silverpine Forest'] = {
        level = {
            text = '10 - 20',
            min = 10,
            max = 20,
        },
        status = 'Horde',
        notes = 'Undead Favored',
    },
    ['Westfall'] = {
        level = {
            text = '10 - 20',
            min = 10,
            max = 20,
        },
        status = 'Alliance',
        notes = 'Human Favored',
    },
    ['Redridge Mountains'] = {
        level = {
            text = '15 - 25',
            min = 15,
            max = 25,
        },
        status = 'Contested',
        notes = 'Alliance Favored',
    },
    ['Duskwood'] = {
        level = {
            text = '18 - 30',
            min = 18,
            max = 30,
        },
        status = 'Contested',
        notes = 'Alliance Favored',
    },
    ['Hillsbrad Foothills'] = {
        level = {
            text = '20 - 30',
            min = 20,
            max = 30,
        },
        status = 'Contested',
        notes = '',
    },
    ['Wetlands'] = {
        level = {
            text = '20 - 30',
            min = 20,
            max = 30,
        },
        status = 'Contested',
        notes = 'Alliance Favored',
    },
    ['Alterac Mountains'] = {
        level = {
            text = '30 - 40',
            min = 30,
            max = 40,
        },
        status = 'Contested',
        notes = '',
    },
    ['Arathi Highlands'] = {
        level = {
            text = '30 - 40',
            min = 30,
            max = 40,
        },
        status = 'Contested',
        notes = '',
    },
    ['Stranglethorn Vale'] = {
        level = {
            text = '30 - 45',
            min = 30,
            max = 45,
        },
        status = 'Contested',
        notes = '',
    },
    ['Badlands'] = {
        level = {
            text = '35 - 45',
            min = 35,
            max = 45,
        },
        status = 'Contested',
        notes = '',
    },
    ['Swamp of Sorrows'] = {
        level = {
            text = '35 - 45',
            min = 35,
            max = 45,
        },
        status = 'Contested',
        notes = '',
    },
    ['The Hinterlands'] = {
        level = {
            text = '45 - 50',
            min = 45,
            max = 50,
        },
        status = 'Contested',
        notes = '',
    },
    ['Searing Gorge'] = {
        level = {
            text = '43 - 50',
            min = 43,
            max = 50,
        },
        status = 'Contested',
        notes = '',
    },
    ['Blasted Lands'] = {
        level = {
            text = '45 - 55',
            min = 45,
            max = 55,
        },
        status = 'Contested',
        notes = '',
    },
    ['Burning Steppes'] = {
        level = {
            text = '50 - 58',
            min = 50,
            max = 58,
        },
        status = 'Contested',
        notes = '',
    },
    ['Western Plaguelands'] = {
        level = {
            text = '51 - 58',
            min = 51,
            max = 58,
        },
        status = 'Contested',
        notes = '',
    },
    ['Eastern Plaguelands'] = {
        level = {
            text = '53 - 60',
            min = 53,
            max = 60,
        },
        status = 'Contested',
        notes = '',
    },
    ['Deadwind Pass'] = {
        level = {
            text = '55 - 60',
            min = 55,
            max = 60,
        },
        status = 'Contested',
        notes = '',
    },
    ['Durotar'] = {
        level = {
            text = '1 - 10',
            min = 1,
            max = 10,
        },
        status = 'Horde',
        notes = 'Starting Zone',
    },
    ['Mulgore'] = {
        level = {
            text = '1 - 10',
            min = 1,
            max = 10,
        },
        status = 'Horde',
        notes = 'Starting Zone',
    },
    ['Teldrassil'] = {
        level = {
            text = '1 - 10',
            min = 1,
            max = 10,
        },
        status = 'Alliance',
        notes = 'Starting Zone',
    },
    ['Darkshore'] = {
        level = {
            text = '10 - 20',
            min = 10,
            max = 20,
        },
        status = 'Alliance',
        notes = 'Night Elf Favored',
    },
    ['The Barrens'] = {
        level = {
            text = '10 - 25',
            min = 10,
            max = 25,
        },
        status = 'Horde',
        notes = 'Horde Favored',
    },
    ['Stonetalon Mountains'] = {
        level = {
            text = '15 - 27',
            min = 15,
            max = 27,
        },
        status = 'Contested',
        notes = 'Horde Favored',
    },
    ['Ashenvale'] = {
        level = {
            text = '18 - 30',
            min = 18,
            max = 30,
        },
        status = 'Contested',
        notes = 'Alliance Favored',
    },
    ['Thousand Needles'] = {
        level = {
            text = '25 - 35',
            min = 25,
            max = 35,
        },
        status = 'Contested',
        notes = 'Horde Favored',
    },
    ['Desolace'] = {
        level = {
            text = '30 - 40',
            min = 30,
            max = 40,
        },
        status = 'Contested',
        notes = 'Horde Favored',
    },
    ['Dustwallow Marsh'] = {
        level = {
            text = '35 - 45',
            min = 35,
            max = 45,
        },
        status = 'Contested',
        notes = '',
    },
    ['Feralas'] = {
        level = {
            text = '40 - 50',
            min = 40,
            max = 50,
        },
        status = 'Contested',
        notes = '',
    },
    ['Tanaris'] = {
        level = {
            text = '40 - 50',
            min = 40,
            max = 50,
        },
        status = 'Contested',
        notes = '',
    },
    ['Azshara'] = {
        level = {
            text = '45 - 55',
            min = 45,
            max = 55,
        },
        status = 'Contested',
        notes = '',
    },
    ['Felwood'] = {
        level = {
            text = '48 - 55',
            min = 48,
            max = 55,
        },
        status = 'Contested',
        notes = '',
    },
    ['Un\'Goro Crater'] = {
        level = {
            text = '48 - 55',
            min = 48,
            max = 55,
        },
        status = 'Contested',
        notes = '',
    },
    ['Silithus'] = {
        level = {
            text = '55 - 60',
            min = 55,
            max = 60,
        },
        status = 'Contested',
        notes = '',
    },
    ['Winterspring'] = {
        level = {
            text = '53 - 60',
            min = 53,
            max = 60,
        },
        status = 'Contested',
        notes = '',
    },
    ['Ironforge'] = {
        level = {
            text = '1 - 60',
            min = 1,
            max = 60,
        },
        status = 'Alliance',
        notes = 'Capital City',
    },
    ['City of Ironforge'] = {
        level = {
            text = '1 - 60',
            min = 1,
            max = 60,
        },
        status = 'Alliance',
        notes = 'Capital City',
    },
    ['Stormwind City'] = {
        level = {
            text = '1 - 60',
            min = 1,
            max = 60,
        },
        status = 'Alliance',
        notes = 'Capital City',
    },
    ['Darnassus'] = {
        level = {
            text = '1 - 60',
            min = 1,
            max = 60,
        },
        status = 'Alliance',
        notes = 'Capital City',
    },
    ['Thunder Bluff'] = {
        level = {
            text = '1 - 60',
            min = 1,
            max = 60,
        },
        status = 'Horde',
        notes = 'Capital City',
    },  
    ['Orgrimmar'] = {
        level = {
            text = '1 - 60',
            min = 1,
            max = 60,
        },
        status = 'Horde',
        notes = 'Capital City',
    },  
    ['Undercity'] = {
        level = {
            text = '1 - 60',
            min = 1,
            max = 60,
        },
        status = 'Horde',
        notes = 'Capital City',
    },
    ['Moonglade'] = {
        level = {
            text = '10 - 60',
            min = 10,
            max = 60,
        },
        status = 'Contested',
        notes = 'Cenarion Circle',
    },
    ['Deeprun Tram'] = {
        level = {
            text = '1 - 60',
            min = 1,
            max = 60,
        },
        status = 'Alliance',
        notes = 'Rail System',
    },                            
}

-- Function for finding a zone
function BetterZoneStats:FindZone(subzone, zone)
    -- Check for the zone 
    local fZone = classicZones[zone]
    -- If we found a zone
    if fZone ~= nil then
        -- Return the zone details
        return fZone
    else 
        -- Check if the player is in a dungeon zone
        return self:FindDungeon(subzone, zone)
    end
end
