# Warlock Priority Damage Macro
A powerful World of Warcraft (Classic/TBC) macro that optimizes Warlock damage rotation with intelligent priority casting and utility integration.

The Macro
```
/run if IsAltKeyDown() then cast("Sacrifice") return end
/run if not buffed("Curse of Exhaustion","target") then cast("Curse of Exhaustion") return end
/run if not buffed("Corruption","target") then cast("Corruption") return end
/run if not buffed("Immolate","target") then cast("Immolate") return end
/run cast("Searing Pain")
```

# Why This Macro Is Cool

### 🔥 **Intelligent Priority System**
The macro follows a logical damage-over-time (DoT) priority that maximizes DPS:

1. **Curse of Exhaustion** for kiting/slowing
2. **Corruption** (instant cast, high damage)
3. **Immolate** (sets up for Conflagrate in later expansions)
4. **Searing Pain** as filler spell

This ensures you're always applying the most important spells first, never wasting time on spells that are already active.

### ⚡ **Smart Utility Integration**
if IsAltKeyDown() then cast("Sacrifice") return end

- **Instant utility access**: Hold Alt while pressing the macro to instantly cast Sacrifice (for Voidwalker shield)
- **No button bloat**: One button handles both damage rotation and emergency defense
- **Priority override**: The Alt-key check happens first, so you never risk casting a damage spell when you need defense

### 🎯 **Efficiency Features**
- **"Buffed" checks prevent overwriting**: Uses custom logic (you'd need the buffed() function) to check if debuffs are already on the target
- **Return statements**: Each /run stops further execution when its condition is met, making it responsive
- **One-button rotation**: Perfect for mobile fights or when you need to focus on mechanics rather than your action bars

## Use Cases

### **Leveling**
- Consistent damage application on multiple targets
- Built-in slowing for kiting with Curse of Exhaustion

### **Dungeons**
- Maintain DoTs on multiple targets efficiently
- Quick access to Voidwalker sacrifice for tank emergencies

### **PvP**
- Priority system ensures you're always applying pressure
- Curse of Exhaustion for control
- Alt-modifier for instant defensive cooldown
