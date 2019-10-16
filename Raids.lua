local classicRaids = {
    ['Zul\'Gurub'] = {
        level = {
            text = '61 - 68',
            min = 61,
            max = 68,
        },
        status = 'Contested',
        notes = 'Raid',
    },
    ['Onyxia\'s Lair'] = {
        level = {
            text = '60 - 62',
            min = 60,
            max = 62,
        },
        status = 'Contested',
        notes = 'Raid',
    },
    ['Molten Core'] = {
        level = {
            text = '58 - 62',
            min = 58,
            max = 62,
        },
        status = 'Contested',
        notes = 'Raid',
    },
    ['Blackwing Lair'] = {
        level = {
            text = '60 - 62',
            min = 60,
            max = 62,
        },
        status = 'Contested',
        notes = 'Raid',
    },
    ['Ruins of Ahn\'Qiraj'] = {
        level = {
            text = '60 - 62',
            min = 60,
            max = 62,
        },
        status = 'Contested',
        notes = 'Raid',
    },
    ['Temple of Ahn\'Qiraj'] = {
        level = {
            text = '60 - 62',
            min = 60,
            max = 62,
        },
        status = 'Contested',
        notes = 'Raid',
    },
    ['Naxxramas'] = {
        level = {
            text = '60 - 62',
            min = 60,
            max = 62,
        },
        status = 'Contested',
        notes = 'Raid',
    },
    ['Unknown'] = {
        level = {
            text = '1 - 120',
            min = 1,
            max = 20,
        }, 
        status = 'Contested',
        notes = ''
    },
}

-- Function for finding a raid zone
function BetterZoneStats:FindRaid(subzone, zone)
    -- Check for the zone 
    local fRaid = classicRaids[zone]
    -- If we found a raid
    if fRaid ~= nil then
        -- Return the raid details
        return fRaid
    else 
        -- Debug print as we can't find any details for the given zone
        self:DebugPrint('Unknown zone: ' .. subzone .. ', ' .. zone)
        -- Zone is unknown
        return classicRaids['Unknown']
    end
end
