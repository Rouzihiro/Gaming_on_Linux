/run if UnitExists("target") and not IsCurrentAction(11) then CastSpellByName("Attack") end
/run if IsAltKeyDown() then cast("Sinister Strike") return end
/run if GetComboPoints("player","target")<=1 and not buffed("Slice and Dice","player") then cast("Slice and Dice") return end
/run if not buffed("Rupture","target") then cast("Rupture") return end
/run if GetComboPoints("player","target")==0 then cast("Sinister Strike") return end
/run if GetComboPoints("player","target")==5 and UnitMana("player")>=35 and not buffed("Rupture","target") then cast("Rupture") return end
/run if GetComboPoints("player","target")==5 then cast("Eviscerate") return end
/cast Sinister Strike
