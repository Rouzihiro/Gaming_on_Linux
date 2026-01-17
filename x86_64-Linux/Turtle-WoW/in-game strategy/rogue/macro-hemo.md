# Rogue Priority Combo Macro

An efficient World of Warcraft (Classic/TBC) macro for Rogues that intelligently manages combo point usage with priority-based casting and utility integration.

## The Macro
```
/run if IsAltKeyDown() then cast "Kidney Shot" return end
/run local cp=GetComboPoints() if not buffed("Slice and Dice") and cp>=1 and cp<=2 then cast "Slice and Dice" return end
/run if GetComboPoints()>=5 then cast "Eviscerate" return end
/run cast "Hemorrhage"
```
## Why This Macro Is Cool

### 🎯 **Smart Combo Point Management**
The macro follows an intelligent priority system for optimal damage and sustain:

1. **Slice and Dice Priority**: Uses 1-2 combo points to maintain your primary damage buff
2. **Eviscerate at 5 CP**: Maximizes damage with finishers at full combo points
3. **Hemorrhage as Builder**: Efficient combo point generation
4. **No Overcapping**: Smart logic prevents wasting combo points

### ⚡ **Instant Utility Access**
if IsAltKeyDown() then cast "Kidney Shot" return end

- **Emergency CC**: Hold Alt for instant Kidney Shot (stun) regardless of combo points
- **Priority Override**: Defensive/utility need takes precedence over DPS rotation
- **One-Button Versatility**: Single button handles both damage rotation and PvP utility

### 🔄 **Efficient Rotation Logic**
- **Slice and Dice Uptime**: Automatically maintains your most important buff with low combo points
- **Combo Point Awareness**: Checks current CP before making decisions
- **Responsive Execution**: `return` statements prevent unnecessary condition checks
- **Energy Efficient**: Uses Hemorrhage (less energy) instead of Sinister Strike for point building

## Key Features

### **Optimal Finisher Timing**
```
if GetComboPoints()>=5 then cast "Eviscerate" return end
```

never wastes combo points by overcapping
Maximizes damage with 5-point finishers
Works perfectly with Relentless Strikes talent

Smart Buff Maintenance
```
if not buffed("Slice and Dice") and cp>=1 and cp<=2 then cast "Slice and Dice"
```
Reapplies Slice and Dice before it falls off

Uses low combo points (1-2) to maintain uptime efficiently

Saves higher combo points for damage finishers

PvP Ready
Instant access to Kidney Shot with Alt modifier

Maintains damage pressure while having CC available

Perfect for world PvP and battlegrounds

Use Cases
Leveling
Maintains Slice and Dice for faster killing

Efficient energy usage with Hemorrhage

Available stun for tough mobs

Dungeons
Consistent damage output with buff uptime

Available crowd control for emergencies

Simple rotation lets you focus on mechanics

PvP
One-button damage rotation

Instant access to stun when needed

Never caught without Kidney Shot available

Raiding
Maximizes DPS with proper finisher timing

Maintains important personal buffs

Reduces button clutter for cleaner UI

