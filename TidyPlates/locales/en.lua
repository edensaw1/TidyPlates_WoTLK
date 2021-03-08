local _, TidyPlates = ...

local setmetatable = setmetatable
local tostring, format = tostring, string.format
local rawset, rawget = rawset, rawget

local L = setmetatable({}, {
    __newindex = function(self, key, value)
        rawset(self, key, value == true and key or value)
    end,
    __index = function(self, key)
        return key
    end
})

-- Quick usage of string.format
-- @param line the line to print
-- @param ...
-- @return returns the formatted
function L:F(line, ...)
    line = L[line]
    return format(line, ...)
end

TidyPlates.L = L

----------------------
--[[ TidyPlatesPanel.lua ]]--
----------------------

L["No Automation"] = true
L["Show during Combat, Hide when Combat ends"] = true
L["Hide when Combat starts, Show when Combat ends"] = true
L["Primary Theme:"] = true
L["Secondary Theme:"] = true
L["Please choose a theme for your Primary and Secondary Specializations. The appropriate theme will be automatically activated when you switch specs."] = true
L["Enemy Nameplates:"] = true
L["Friendly Nameplates:"] = true
L["Automation can automatically turn on or off Friendly and Enemy nameplates."] = true
L["Blizzard Nameplate Motion & Visibility"] = true
L["Show Non-Target Casting Bars (When Possible)"] = true
L["Enable Minimap Icon"] = true
L["Reset Configuration"] = true
L["|cFFFF6600Tidy Plates: |cFFFFFFFFWidget file versions do not match. This may be caused by an issue with auto-updater software."] = true
L["Please uninstall Tidy Plates, and then re-install. You do NOT need to clear your variables."] = true
L["|cFFFF6600Tidy Plates: |cFFFF9900No Theme is Selected. |cFF77FF00Use |cFFFFFF00/tidyplates|cFF77FF00 to bring up the Theme Selection Window."] = true

L.resetTidyPlanel = "%sResetting %sTidy Plates %sTheme Selection to Default"
L.commonResetPanel = "%sResetting %sTidy Plates Hub: %s%s %sConfiguration to Default"
L.resetTidyPlanelShift = "%sHolding down %sShift %swhile clicking %sReset Configuration %swill clear your saved settings, AND reload the user interface."
L.commonCopyPanel = "%sCopied %sTidy Plates Hub: %s%s %sTheme Values to Cache."
L.commonPastePanel = "%sPasted %sTidy Plates Hub: %s%s %sTheme Values from Cache."

----------------------
--[[ TankPanel.lua ]]--
----------------------

L["Default"] = true
L["Text Only"] = true
L["Bars during Combat"] = true
L["Bars on Active/Damaged Units"] = true
L["Bars on Elite Units"] = true
L["Bars on Marked Units"] = true
L["Bars on Players"] = true
L["None"] = true
L["Percent Health"] = true
L["Exact health"] = true
L["Health Deficit"] = true
L["Health Total & Percent"] = true
L["Target Of"] = true
L["Approximate Health"] = true
L["9 yards"] = true
L["15 yards"] = true
L["28 yards"] = true
L["40 yards"] = true
L["Show All"] = true
L["Show These... "] = true
L["Show All Mine "] = true
L["Show My... "] = true
L["By Prefix..."] = true
L["By Low Threat"] = true
L["By Mouseover"] = true
L["By Debuff Widget"] = true
L["By Enemy"] = true
L["By NPC"] = true
L["By Raid Icon"] = true
L["By Active/Damaged"] = true
L["By Elite"] = true
L["By Target"] = true
L["By Class"] = true
L["By Threat"] = true
L["By Reaction"] = true
L["Tug-o-Threat"] = true
L["Threat Wheel"] = true
L["Style"] = true
L["Opacity"] = true
L["Current Target Opacity:"] = true
L["Non-Target Opacity:"] = true
L["Opacity Spotlight Mode:"] = true
L["Spotlight Opacity:"] = true
L["Bring Casting Units to Target Opacity"] = true
L["Use Target Opacity When No Target Exists"] = true
L["Filtered Unit Opacity:"] = true
L["Filter Neutral Units"] = true
L["Filter Non-Elite"] = true
L["Filter Inactive"] = true
L["Filter By Unit Name:"] = true
L["Scale"] = true
L["Normal Scale:"] = true
L["Scale Spotlight Mode:"] = true
L["Spotlight Scale:"] = true
L["Ignore Neutral Units"] = true
L["Ignore Non-Elite Units"] = true
L["Ignore Inactive Units"] = true
L["Text"] = true
L["Name Text Color Mode:"] = true
L["Health Text:"] = true
L["Show Level Text"] = true
L["Use Default Blizzard Font"] = true
L["Color"] = true
L["Health Bar Color Mode:"] = true
L["Warning Glow/Border Mode:"] = true
L["Threat Colors:"] = true
L["Attacking Me"] = true
L["Losing Aggro"] = true
L["Attacking Others"] = true
L["Attacking Another Tank"] = true
L["Show Warning around Group Members with Aggro"] = true
L["Show Class Color for Party and Raid Members"] = true
L["Widgets"] = true
L["Show Highlight on Current Target"] = true
L["Show Elite Indicator"] = true
L["Show Enemy Class Icons"] = true
L["Show Party Member Class Icons"] = true
L["Show Totem Icons"] = true
L["Show Combo Points"] = true
L["Show Threat Indicator"] = true
L["Threat Indicator:"] = true
L["Show Party Range Warning"] = true
L["Range:"] = true
L["Show My Debuff Timers"] = true
L["Debuff Filter:"] = true
L["Debuff Names:"] = true
L["WidgetsDebuffTrackList_Description"] = [[
Tip: |cffCCCCCCDebuffs should be listed with the exact name, or a spell ID number.
You can use the prefixes, "My" or "All", to distinguish personal damage spells from global crowd control spells.
Auras at the top of the list will get displayed before lower ones.|r
]]
L["Frame"] = true
L["Vertical Position of Artwork:"] = true
L["Paste"] = true
L["Copy"] = true
L["Reset"] = true

----------------------
--[[ DamagePanel.lua ]]--
----------------------

L["Show All Debuffs"] = true
L["Show Specific Debuffs... "] = true
L["Show All My Debuffs "] = true
L["Show My Specific Debuffs... "] = true
L["By High Threat"] = true
L["Gaining Aggro"] = true
L["Show Warning on Group Members with Aggro"] = true