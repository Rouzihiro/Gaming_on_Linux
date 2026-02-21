if Ruthlessness is at 100%

/run if UnitExists("target") and not IsCurrentAction(11) then CastSpellByName("Attack") end
/run if IsAltKeyDown() then CastSpellByName("Slice and Dice") return end
/run if GetComboPoints("player","target")<=1 and not buffed("Slice and Dice","player") then CastSpellByName("Slice and Dice") return end
/run if not buffed("Envenom","player") then CastSpellByName("Envenom") return end
/run if GetComboPoints("player","target")==5 and UnitMana("player")>=35 and not buffed("Rupture","target") then CastSpellByName("Rupture") return end
/run if GetComboPoints("player","target")==5 then CastSpellByName("Eviscerate") return end
/run CastSpellByName("Noxious Assault")

otherwise...

/run if not buffed("Slice and Dice","player") then cast("Slice and Dice") return end
