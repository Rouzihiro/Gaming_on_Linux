
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
	["wordWrap"] = 0,
	["replaceIcon"] = 1,
	["tabShown"] = "regular",
	["macroTip2"] = 0,
}
SM_EXTEND = {
	["1"] = "\nfunction UseFirstSurvivalItem(items)\n for _,item in ipairs(items) do\n  for bag=0,4 do\n   for slot=1,GetContainerNumSlots(bag) do\n    local link=GetContainerItemLink(bag,slot)\n    if link and string.find(link,item,1,true) then\n     UseContainerItem(bag,slot)\n     return true\n    end\n   end\n  end\n end\n return false\nend\n\nfunction ArcanePowerActive()\n for i=1,16 do\n  local b=UnitBuff(\"player\",i)\n  if not b then break end\n  if string.find(b,\"ArcanePower\") or string.find(b,\"Spell_Nature_Lightning\") then return true end\n end\n return false\nend\n\nfunction SurvivalFrost()\n if not UnitAffectingCombat(\"player\") then return false end\n\n local hp=UnitHealth(\"player\")/UnitHealthMax(\"player\")*100\n local mp=UnitMana(\"player\")/UnitManaMax(\"player\")*100\n\n if hp<35 then\n  if UseFirstSurvivalItem({\n   \"Major Healing Potion\",\"Major Healthstone\",\n   \"Superior Healing Potion\",\"Greater Healthstone\",\n   \"Greater Healing Potion\",\"Healthstone\",\n   \"Healing Potion\",\"Lesser Healing Potion\"\n  }) then return true end\n end\n\n if ArcanePowerActive() and mp<30 then\n  if UseFirstSurvivalItem({\n   \"Mana Ruby\",\"Mana Citrine\",\"Mana Jade\",\"Mana Agate\"\n  }) then return true end\n  if UseFirstSurvivalItem({\n   \"Major Mana Potion\",\"Superior Mana Potion\",\n   \"Greater Mana Potion\",\"Mana Potion\",\"Lesser Mana Potion\"\n  }) then return true end\n end\n\n if mp<5 then\n  if UseFirstSurvivalItem({\n   \"Mana Ruby\",\"Mana Citrine\",\"Mana Jade\",\"Mana Agate\"\n  }) then return true end\n  if UseFirstSurvivalItem({\n   \"Major Mana Potion\",\"Superior Mana Potion\",\n   \"Greater Mana Potion\",\"Mana Potion\",\"Lesser Mana Potion\"\n  }) then return true end\n end\n\n return false\nend\n",
	["Burst"] = "function ArcanePowerActive()\n for i=1,16 do\n  local b=UnitBuff(\"player\",i)\n  if not b then break end\n  if string.find(b,\"Spell_Nature_Lightning\") then\n   return true\n  end\n end\n return false\nend\n\nfunction BurstSequence()\n if not BurstStep or BurstStep==0 then\n  local hp=UnitHealth(\"player\")/UnitHealthMax(\"player\")\n\n  if not ArcanePowerActive() then\n   if hp<=0.5 then\n    CastSpellByName(\"Berserking\")\n   else\n    CastSpellByName(\"Arcane Power\")\n   end\n  end\n\n  BurstStep=1\n\n elseif BurstStep==1 then\n  CastSpellByName(\"Presence of Mind\")\n  BurstStep=2\n\n else\n  CastSpellByName(\"Fireball\")\n  BurstStep=0\n end\nend",
	["AR"] = "ARTracker = CreateFrame(\"Frame\")\nARTracker:RegisterEvent(\"SPELLCAST_START\")\nARTracker:RegisterEvent(\"SPELLCAST_STOP\")\nARTracker:RegisterEvent(\"SPELLCAST_FAILED\")\nARTracker:SetScript(\"OnEvent\", function()\n if event==\"SPELLCAST_START\" and arg1==\"Arcane Rupture\" then\n  ARCasting=true\n elseif event==\"SPELLCAST_STOP\" or event==\"SPELLCAST_FAILED\" then\n  ARCasting=false\n end\nend)",
	["blink"] = "function BlinkPower()\n BlinkStep = (BlinkStep or 0) + 1\n if BlinkStep==1 then\n  CastSpellByName(\"Presence of Mind\")\n elseif BlinkStep==2 then\n  CastSpellByName(\"Fireball\")\n elseif BlinkStep==3 then\n  CastSpellByName(\"Arcane Power\")\n else\n  CastSpellByName(\"Berserking\")\n  BlinkStep=0\n end\nend",
	["detect"] = "\nfunction UseBestBandage()\n local b={\n  \"Heavy Runecloth Bandage\",\n  \"Runecloth Bandage\",\n  \"Heavy Mageweave Bandage\",\n  \"Mageweave Bandage\",\n  \"Heavy Silk Bandage\",\n  \"Silk Bandage\",\n  \"Heavy Wool Bandage\",\n  \"Wool Bandage\",\n  \"Heavy Linen Bandage\",\n  \"Linen Bandage\"\n }\n for _,item in ipairs(b) do\n  for bag=0,4 do\n   for slot=1,GetContainerNumSlots(bag) do\n    local link=GetContainerItemLink(bag,slot)\n    if link and string.find(link,item,1,true) then\n     UseContainerItem(bag,slot)\n     return true\n    end\n   end\n  end\n end\n return false\nend\n",
	["frost"] = "\nfunction UseFirstSurvivalItem(items)\n for _,item in ipairs(items) do\n  for bag=0,4 do\n   for slot=1,GetContainerNumSlots(bag) do\n    local link=GetContainerItemLink(bag,slot)\n    if link and string.find(link,item,1,true) then\n     UseContainerItem(bag,slot)\n     return true\n    end\n   end\n  end\n end\n return false\nend\n\nfunction ArcanePowerActive()\n for i=1,16 do\n  local b=UnitBuff(\"player\",i)\n  if not b then break end\n  if string.find(b,\"ArcanePower\") or string.find(b,\"Spell_Nature_Lightning\") then return true end\n end\n return false\nend\n\nfunction SurvivalFrost()\n if not UnitAffectingCombat(\"player\") then return false end\n\n local hp=UnitHealth(\"player\")/UnitHealthMax(\"player\")*100\n local mp=UnitMana(\"player\")/UnitManaMax(\"player\")*100\n\n if hp<35 then\n  if UseFirstSurvivalItem({\n   \"Major Healing Potion\",\"Major Healthstone\",\n   \"Superior Healing Potion\",\"Greater Healthstone\",\n   \"Greater Healing Potion\",\"Healthstone\",\n   \"Healing Potion\",\"Lesser Healing Potion\"\n  }) then return true end\n end\n\n if ArcanePowerActive() and mp<30 then\n  if UseFirstSurvivalItem({\n   \"Mana Ruby\",\"Mana Citrine\",\"Mana Jade\",\"Mana Agate\"\n  }) then return true end\n  if UseFirstSurvivalItem({\n   \"Major Mana Potion\",\"Superior Mana Potion\",\n   \"Greater Mana Potion\",\"Mana Potion\",\"Lesser Mana Potion\"\n  }) then return true end\n end\n\n if mp<5 then\n  if UseFirstSurvivalItem({\n   \"Mana Ruby\",\"Mana Citrine\",\"Mana Jade\",\"Mana Agate\"\n  }) then return true end\n  if UseFirstSurvivalItem({\n   \"Major Mana Potion\",\"Superior Mana Potion\",\n   \"Greater Mana Potion\",\"Mana Potion\",\"Lesser Mana Potion\"\n  }) then return true end\n end\n\n return false\nend\n",
	["fire"] = "function SmartFire()\n if not UnitAffectingCombat(\"player\") then\n  CastSpellByName(\"Fireball\")\n  return\n end\n local s=false\n for i=1,16 do\n  local d=UnitDebuff(\"target\",i)\n  if not d then break end\n  if string.find(d,\"Polymorph\") or string.find(d,\"FrostNova\") then s=true break end\n end\n CastSpellByName(s and \"Fireball\" or \"Fire Blast\")\nend",
	["Burst2"] = "function ArcanePowerActive()\n for i=1,16 do\n  local b=UnitBuff(\"player\",i)\n  if not b then break end\n  if string.find(b,\"Spell_Nature_Lightning\") then return true end\n end\n return false\nend\n\nfunction SpellReady(slot)\n local s=GetSpellCooldown(slot,BOOKTYPE_SPELL)\n return s==0\nend\n\nfunction BurstSequence()\n if not BurstStep or BurstStep==0 then\n  local hp=UnitHealth(\"player\")/UnitHealthMax(\"player\")\n  local apReady=SpellReady(35)\n  local berReady=SpellReady(4)\n\n  if not ArcanePowerActive() then\n   if hp<=0.5 and berReady then\n    CastSpellByName(\"Berserking\")\n   elseif apReady then\n    CastSpellByName(\"Arcane Power\")\n   elseif berReady then\n    CastSpellByName(\"Berserking\")\n   end\n  end\n\n  BurstStep=1\n\n elseif BurstStep==1 then\n  CastSpellByName(\"Presence of Mind\")\n  BurstStep=2\n\n else\n  CastSpellByName(\"Fireball\")\n  BurstStep=0\n end\nend",
}
SM_ACTION_SUPER = {
	["Reymage of N'Zoth"] = {
	},
}
SM_SUPER = {
}
