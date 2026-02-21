# Rogue Priority Combo Macro

An efficient World of Warcraft (Classic/TBC) macro for Rogues that intelligently manages combo point usage with priority-based casting and utility integration.

## The Macro

### 🎯 **Smart Combo Point Management**
The macro follows an intelligent priority system for optimal damage and sustain:

1. **Slice and Dice Priority**: Uses 0-1 combo points to maintain your primary damage buff
2. **Eviscerate at 5 CP**: Maximizes damage with finishers at full combo points
3. **Hemorrhage as Builder**: Efficient combo point generation
4. **No Overcapping**: Smart logic prevents wasting combo points

```
/run if UnitExists("target") then CastSpellByName("Attack") end
/run if IsAltKeyDown() then if GetComboPoints("player","target")==5 then cast("Shadow of Death") else cast("Hemorrhage") end return end
/run if GetComboPoints("player","target")<=1 and not buffed("Slice and Dice","player") then cast("Slice and Dice") return end
/run if GetComboPoints("player","target")==0 then cast("Hemorrhage") return end
/run if GetComboPoints("player","target")==5 and UnitMana("player")>=35 and not buffed("Expose Armor","target") then cast("Expose Armor") return end
/run if GetComboPoints("player","target")==5 and UnitMana("player")>=35 and not buffed("Rupture","target") then cast("Rupture") return end
/run if GetComboPoints("player","target")==5 then cast("Eviscerate") return end
/run cast("Hemorrhage")
```

