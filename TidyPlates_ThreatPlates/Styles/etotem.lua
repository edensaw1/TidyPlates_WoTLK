local TidyPlatesUtility = TidyPlatesUtility
local MediaFetch = TidyPlatesUtility.MediaFetch

local config = {}
local path = "Interface\\Addons\\TidyPlates_ThreatPlates\\Media\\Artwork\\"
local f = CreateFrame("Frame")
local function CreateStyle(self, event, ...)
	if ... == "TidyPlates_ThreatPlates" then
		local db = TidyPlatesThreat.db.profile.settings
		local width = db.healthbar.width or 135
		local height = db.healthbar.height or 15
		local castbarwidth = db.castbar.width 160
		local castbarheight = db.castbar.height 16

		config.hitbox = {
			width = width * 1.0667,
			height = height * 2.4
		}
		config.frame = {
			emptyTexture = path .. "Empty",
			width = width * 1.0333,
			height = height * 3,
			x = 0,
			y = 0,
			anchor = "CENTER"
		}
		config.threatborder = {
			texture = path .. "Empty",
			elitetexture = path .. "Empty",
			width = width * 2.1333,
			height = height * 6.4,
			x = 0,
			y = 0,
			anchor = "CENTER"
		}
		config.healthborder = {
			texture = path .. "Empty",
			glowtexture = path .. "Empty",
			elitetexture = path .. "Empty",
			width = width * 2.1333,
			height = height * 6.4,
			x = 0,
			y = 0,
			anchor = "CENTER"
		}
		config.castborder = {
			texture = path .. "Empty",
			width = castbarwidth * 2.1333,
			height = castbarheight * 6.4,
			x = 0,
			y = -15,
			anchor = "CENTER"
		}

		config.castnostop = {
			texture = path .. "Empty",
			width = castbarwidth * 2.1333,
			height = castbarheight * 6.4,
			x = 0,
			y = -15,
			anchor = "CENTER"
		}
		-- Bar Textures
		config.healthbar = {
			texture = path .. "Empty",
			width = db.healthbar.width or 135,
			height = db.healthbar.height or 15,
			x = 0,
			y = 0,
			anchor = "CENTER",
			orientation = "HORIZONTAL"
		}
		config.castbar = {
			texture = path .. "Empty",
			width = db.castbar.width or 160,
			height = db.castbar.height or 16,
			x = 0,
			y = -15,
			anchor = "CENTER",
			orientation = "HORIZONTAL"
		}
		-- TEXT

		config.name = {
			typeface = MediaFetch("font", db.name.typeface),
			size = db.name.size,
			width = db.name.width,
			height = db.name.height,
			x = db.name.x,
			y = db.name.y,
			align = db.name.align,
			anchor = "CENTER",
			vertical = db.name.vertical,
			shadow = db.name.shadow,
			flags = db.name.flags,
			show = false
		}
		config.level = {
			typeface = MediaFetch("font", db.level.typeface),
			size = db.level.size,
			width = db.level.width,
			height = db.level.height,
			x = db.level.x,
			y = db.level.y,
			align = db.level.align,
			anchor = "CENTER",
			vertical = db.level.vertical,
			shadow = db.level.shadow,
			flags = db.level.flags,
			show = false
		}
		config.customtext = {
			typeface = MediaFetch("font", db.customtext.typeface),
			size = db.customtext.size,
			width = db.customtext.width,
			height = db.customtext.height,
			x = db.customtext.x,
			y = db.customtext.y,
			align = db.customtext.align,
			anchor = "CENTER",
			vertical = db.customtext.vertical,
			shadow = db.customtext.shadow,
			flags = db.customtext.flags,
			show = false
		}
		config.spelltext = {
			typeface = MediaFetch("font", db.spelltext.typeface),
			size = db.spelltext.size,
			width = db.spelltext.width,
			height = db.spelltext.height,
			x = db.spelltext.x,
			y = db.spelltext.y,
			align = db.spelltext.align,
			anchor = "CENTER",
			vertical = db.spelltext.vertical,
			shadow = db.spelltext.shadow,
			flags = db.spelltext.flags,
			show = false
		}
		-- ICONS
		config.skullicon = {
			width = (db.skullicon.scale),
			height = (db.skullicon.scale),
			x = (db.skullicon.x),
			y = (db.skullicon.y),
			anchor = (db.skullicon.anchor),
			show = false
		}
		config.customart = {
			width = (db.customart.scale),
			height = (db.customart.scale),
			x = (db.customart.x),
			y = (db.customart.y),
			anchor = (db.customart.anchor),
			show = false
		}
		config.spellicon = {
			width = (db.spellicon.scale),
			height = (db.spellicon.scale),
			x = (db.spellicon.x),
			y = (db.spellicon.y),
			anchor = (db.spellicon.anchor),
			show = false
		}
		config.raidicon = {
			width = (db.raidicon.scale),
			height = (db.raidicon.scale),
			x = (db.raidicon.x),
			y = (db.raidicon.y),
			anchor = (db.raidicon.anchor),
			show = false
		}
		-- OPTIONS
		local threat = db.totem.threatcolor
		config.threatcolor = {
			LOW = {
				r = threat.LOW.r,
				g = threat.LOW.g,
				b = threat.LOW.b,
				a = threat.LOW.a
			},
			MEDIUM = {
				r = threat.MEDIUM.r,
				g = threat.MEDIUM.g,
				b = threat.MEDIUM.b,
				a = threat.MEDIUM.a
			},
			HIGH = {
				r = threat.HIGH.r,
				g = threat.HIGH.g,
				b = threat.HIGH.b,
				a = threat.HIGH.a
			}
		}
		TidyPlatesThemeList["Threat Plates"]["etotem"] = {}
		TidyPlatesThemeList["Threat Plates"]["etotem"] = config
	end
end
f:SetScript("OnEvent", function(self, event, ...) CreateStyle(self, event, ...) end)
f:RegisterEvent("ADDON_LOADED")