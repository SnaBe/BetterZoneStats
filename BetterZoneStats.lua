-- Function for printing in debug mode
function BetterZoneStats:DebugPrint(str)
    -- Only print if debug mode is true
    if self.db.profile.debugMode then
        print(str)
    end
end

-- Called when the addon is loaded
function BetterZoneStats:OnInitialize()
    -- Load addon options
    self:LoadOptions()
    -- Update interval for the frame's OnUpdate event
    self.updateInterval = 1.0
    -- Seconds since the last OnUpdate event occurred
    self.secondsSinceLastUpdate = 1.0
    -- Get the players current zone
    self:GetZone()
     -- If the frame was set to be locked, it should remain locked on a fresh load.
    ZoneFrame:EnableMouse(not self.db.profile.frameLocked)
end

-- Called when the addon is enabled
function BetterZoneStats:OnEnable()
    -- Register the events related to the player changing zone
    self:RegisterEvent('ZONE_CHANGED', BetterZoneStats.HandleZoneChange)
    self:RegisterEvent('ZONE_CHANGED_INDOORS', BetterZoneStats.HandleZoneChange)
    self:RegisterEvent('ZONE_CHANGED_NEW_AREA', BetterZoneStats.HandleZoneChange)
end

-- Called when the addon is disabled
function BetterZoneStats:OnDisable()

end

-- Function to be called on OnUpdate
function OnUpdate(self, timeElapsed)
    -- Update the secondsSinceLastUpdate with the timeElapsed
    BetterZoneStats.secondsSinceLastUpdate = BetterZoneStats.secondsSinceLastUpdate + timeElapsed
    -- Only call getCoordinates() if 
    if(BetterZoneStats.secondsSinceLastUpdate > BetterZoneStats.updateInterval) then
        -- Get the player's current coordinates
        BetterZoneStats:GetCoordinates()
        -- Reset the secondsSinceLastUpdate counter to 0
        BetterZoneStats.secondsSinceLastUpdate = 0
    end
end

-- Function for getting the player's coordinates
function BetterZoneStats:GetCoordinates()
    -- Checks whether the player is in an instance and the type of instance.
    local isPlayerInInstance, instanceType = IsInInstance()
    -- Debug print 
    self:DebugPrint('Is ' .. GetUnitName('player') .. ' in an instance? (instance type: ' .. instanceType .. ') - ' .. tostring(isPlayerInInstance))
    -- Make sure the player is not in an instance
    if not isPlayerInInstance then
        -- Get the current UI map for the given unit
        local mapId = C_Map.GetBestMapForUnit('player')
        -- We can't retrieve the players position without a mapId
        if not mapId then return end
        -- Get the player's current position from the UI map id
        local playerPosition = C_Map.GetPlayerMapPosition(mapId, 'player')
        -- Update the player's positions x value
        playerPosition.x = math.floor(playerPosition.x * 10000) / 100
        -- Update the player's positions y value
        playerPosition.y = math.floor(playerPosition.y * 10000) / 100
        -- Update the frame with the current subzone, zone and x, y values
        ZoneFrame_PlayerCoordinates:SetText('(X: ' .. playerPosition.x .. ' , Y: ' .. playerPosition.y .. ')')   
    end
end

-- Function for handling the player changing zones
function BetterZoneStats:HandleZoneChange(self, event, ...)
    -- Get the players current zone
    BetterZoneStats:GetZone()
end

-- Get the player's current subzone, zone and their details
function BetterZoneStats:GetZone()
    -- Update the player's subzone
    local subzone = GetSubZoneText()
    -- Update the player's zone
    local zone = GetRealZoneText()
    -- Subzones can be empty strings
    if subzone == '' or subzone == zone then
        -- Set the player's current zone to be equal to the return value GetZoneText()
        ZoneFrame_PlayerZone:SetText(zone)
    else
        -- Set the player's current zone to be equal to the return value GetSubZoneText() and GetZoneText()
        ZoneFrame_PlayerZone:SetText(subzone .. ', ' .. zone)
    end
    -- Retrieve the players current zone details
    local zoneDetails = BetterZoneStats:FindZone(subzone, zone)
    -- Check if a zone has any special notes
    if zoneDetails.notes ~= '' then
        -- The zone could be a Capital City, Faction Favored or other
        ZoneFrame_ZoneStatus:SetText(zoneDetails.status .. ' Territory (' .. zoneDetails.notes .. ')')
    else
        -- A does not have any special notes
        ZoneFrame_ZoneStatus:SetText(zoneDetails.status .. ' Territory') 
    end

    local playerFaction = UnitFactionGroup('player')
    -- Check the players faction and their status with that zone
    if playerFaction == zoneDetails.status then
        -- Set the PlayerZone and ZoneStatus text color to red
        ZoneFrame_PlayerZone:SetTextColor(0, 1, 0, 1)
        ZoneFrame_ZoneStatus:SetTextColor(0, 1, 0, 1)
    elseif zoneDetails.status == 'Contested' then
        -- Set the PlayerZone and ZoneStatus text color to yellow
        ZoneFrame_PlayerZone:SetTextColor(1, 1, 0, 1)
        ZoneFrame_ZoneStatus:SetTextColor(1, 1, 0, 1)
    else
        -- Set the PlayerZone and ZoneStatus text color to green
        ZoneFrame_PlayerZone:SetTextColor(1, 0, 0, 1)
        ZoneFrame_ZoneStatus:SetTextColor(1, 0, 0, 1)
    end
    -- Set the zone level for out frame
    ZoneFrame_ZoneLevel:SetText('Zone Level: ' .. zoneDetails.level.text)
    -- Get the players current level
    local playerLevel = UnitLevel('player')
    -- Set the zone level color depending on the players level
    print(GetUnitName('player') .. '\'s level is ' .. playerLevel)
    
    if playerLevel + 10 <= zoneDetails.level.min or playerLevel - zoneDetails.level.max >= 4 then
        print('red zone')
        ZoneFrame_ZoneLevel:SetTextColor(1, 0, 0, 1)
    elseif playerLevel > zoneDetails.level.min and playerLevel < zoneDetails.level.max then
        print('yellow or orange zone')
        ZoneFrame_ZoneLevel:SetTextColor(1, 0.64, 0, 1)
    elseif playerLevel >= zoneDetails.level.max + 10 then
        print('green zone')
        ZoneFrame_ZoneLevel:SetTextColor(0, 1, 0, 1)
    end
end