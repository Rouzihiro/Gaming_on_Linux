
SM_VARS = {
	["windowHeight"] = 600,
	["monoFont"] = 0,
	["macroTip1"] = 1,
	["printColor"] = {
		["r"] = 1,
		["g"] = 1,
		["b"] = 1,
	},
	["showMenu"] = 1,
	["minimap"] = 1,
	["windowWidth"] = 800,
	["checkCooldown"] = 1,
	["hideAction"] = 0,
	["editBoxFontSize"] = 12,
	["replaceIcon"] = 1,
	["wordWrap"] = 0,
	["tabShown"] = "regular",
	["macroTip2"] = 0,
}
SM_EXTEND = {
	["blink"] = "function BlinkPower()\n BlinkStep = (BlinkStep or 0) + 1\n if BlinkStep==1 then\n  CastSpellByName(\"Presence of Mind\")\n elseif BlinkStep==2 then\n  CastSpellByName(\"Fireball\")\n else\n  CastSpellByName(\"Berserking\")\n  BlinkStep=0\n end\nend",
	["fire"] = "function SmartFire()\n if not UnitAffectingCombat(\"player\") then\n  CastSpellByName(\"Fireball\")\n  return\n end\n local s=false\n for i=1,16 do\n  local d=UnitDebuff(\"target\",i)\n  if not d then break end\n  if string.find(d,\"Polymorph\") or string.find(d,\"FrostNova\") then s=true break end\n end\n CastSpellByName(s and \"Fireball\" or \"Fire Blast\")\nend",
	["AR"] = "ARTracker = CreateFrame(\"Frame\")\nARTracker:RegisterEvent(\"SPELLCAST_START\")\nARTracker:RegisterEvent(\"SPELLCAST_STOP\")\nARTracker:RegisterEvent(\"SPELLCAST_FAILED\")\nARTracker:SetScript(\"OnEvent\", function()\n if event==\"SPELLCAST_START\" and arg1==\"Arcane Rupture\" then\n  ARCasting=true\n elseif event==\"SPELLCAST_STOP\" or event==\"SPELLCAST_FAILED\" then\n  ARCasting=false\n end\nend)",
}
SM_ACTION_SUPER = {
	["Reymage of N'Zoth"] = {
	},
}
SM_SUPER = {
}
