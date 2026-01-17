# Warlock DoT Rotation Macro
This is a World of Warcraft Warlock macro designed to automate the DoT (Damage over Time) rotation with intelligent spell selection.

Macro Code

```
/run if IsAltKeyDown() then cast("Life Tap") return end
/run if UnitMana("target")>0 then if not buffed("Curse of Tongues","target") then cast("Curse of Tongues") return end else if not buffed("Curse of Weakness","target") then cast("Curse of Weakness") return end end
/run if not buffed("Curse of Agony","target") then cast("Curse of Agony") return end
/run if not buffed("Corruption","target") then cast("Corruption") return end
/run if not buffed("Siphon Life","target") then cast("Siphon Life") return end
/run if not buffed("Immolate","target") then cast("Immolate") return end
/run cast("Searing Pain")
```

Functionality
1. Life Tap Activation (Alt Modifier)
Condition: When Alt key is held down

Action: Casts Life Tap (converts health to mana)

Note: Execution stops here if Alt is pressed

2. Intelligent Curse Selection
Checks the target's mana status:

If target HAS mana: Applies Curse of Tongues (if not already active)

If target has NO mana: Applies Curse of Weakness (if not already active)

3. DoT Priority Rotation
Maintains Damage over Time spells in this priority order (casts the first missing spell):

Curse of Agony

Corruption

Siphon Life

Immolate

4. Filler Spell
Action: Casts Searing Pain

Condition: Only executes when all priority DoTs are already active on the target

How It Works
The macro follows a strict priority system:

text
Alt Key Pressed? → Life Tap → STOP
│
└→ Target has mana? → Apply Curse of Tongues → STOP
      │
      └→ Target has no mana? → Apply Curse of Weakness → STOP
            │
            └→ Check DoTs in order (first missing gets applied):
                 1. Curse of Agony → STOP
                 2. Corruption → STOP
                 3. Siphon Life → STOP
                 4. Immolate → STOP
                     │
                     └→ All DoTs active? → Searing Pain
Usage Tips
Life Tap: Hold Alt and press the macro button to convert health to mana without affecting your rotation

Normal Rotation: Press without modifiers to execute the standard DoT maintenance sequence

Target Selection: Ensure you have a valid target before pressing

Mana Management: Use Alt frequently to maintain mana during extended fights

Notes
This macro assumes you have all listed spells learned and available

The buffed() function checks if the specified debuff is already on the target

Each return statement prevents further execution once a spell is cast

Works best against single targets where DoT maintenance is valuable
