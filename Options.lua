local defaults = {
	profile = {
		frameLocked = false,
		debugMode = false,
	},
}

local options = {
    name = 'BetterZoneStats',
    handler = BetterZoneStats,
    type = 'group',
    args = {
        frameLocked = {
            type = 'toggle',
			name = 'Lock the frame',
			desc = 'Lock the frame in its current position.',
			get = 'IsFrameLocked',
			set = 'ToggleFrameLocked',
        },
        debugMode = {
            type = 'toggle',
			name = 'Enable debug mode.',
			desc = 'Enable BetterZoneStats debug mode',
			get = 'IsDebugModeOn',
			set = 'ToggleDebugMode',
        },
    }
}

function BetterZoneStats:LoadOptions()
    self.db = LibStub('AceDB-3.0'):New('BetterZoneStatsDb', defaults, true)

    LibStub('AceConfig-3.0'):RegisterOptionsTable('BetterZoneStats', options)

    self.optionsFrame = LibStub('AceConfigDialog-3.0'):AddToBlizOptions('BetterZoneStats', 'BetterZoneStats')
    -- Register our slash commands
    self:RegisterChatCommand('bzs', 'ChatCommand')
    self:RegisterChatCommand('betterzonestats', 'ChatCommand')
end

function BetterZoneStats:ChatCommand(input)
    if not input or input:trim() == '' then
        InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
    else
        LibStub('AceConfigCmd-3.0'):HandleCommand('bzs', 'betterzonestats', input)
    end
end

function BetterZoneStats:IsFrameLocked(info)
	return self.db.profile.frameLocked
end

function BetterZoneStats:ToggleFrameLocked(info, value)
    self.db.profile.frameLocked = value
    
    ZoneFrame:EnableMouse(not self.db.profile.frameLocked)
end

function BetterZoneStats:IsDebugModeOn(info)
	return self.db.profile.debugMode
end

function BetterZoneStats:ToggleDebugMode(info, value)
	self.db.profile.debugMode = value
end