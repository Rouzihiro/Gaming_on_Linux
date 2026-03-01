Macros

```
/run if IsAltKeyDown() then cast "Thunder Clap" return end
/run if UnitExists("target") and not IsCurrentAction(1) then UseAction(1) end
/run if not buffed("Rend","target") then cast("Rend") return end
/run if not buffed("Battle Shout","player") then cast "Battle Shout" return end
/cast Sunder Armor
```

Advanced: Heroic Strike Cancel Trick (High Skill)
This is VERY strong in Vanilla DPS.
You queue HS before swing, then cancel it last moment if rage low to keep rage generation.

Cancel macro:
```
/script SpellStopCasting()
```
Spam HS macro, then tap cancel before swing lands if rage drops.
This increases rage efficiency a lot in raids like MC / ZG.
