# Warlock DPS Macro - Classic WoW

```
/run if IsAltKeyDown() then cast("Life Tap") return end
/run if not buffed("Corruption","target") then cast("Corruption") return end
/run if not buffed("Curse of Agony","target") then cast("Curse of Agony") return end  
/run if not buffed("Immolate","target") then cast("Immolate") return end
/run cast("Searing Pain")
```

Efficient Rotation Management - Automatically applies all Damage-Over-Time (DoT) effects before spamming your filler spell, ensuring maximum uptime.

Smart Priority System - Checks each debuff in optimal order (Corruption → Curse of Agony → Immolate) before defaulting to Searing Pain.

Built-in Utility - Hold Alt to Life Tap instead of attacking, perfect for mana management during downtime.

One-Button Simplicity - Condenses your core rotation into a single button press, reducing keybind clutter and improving reaction time.
