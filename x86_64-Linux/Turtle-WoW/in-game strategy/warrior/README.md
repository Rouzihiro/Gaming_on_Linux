Macros

```
/run if not buffed("Battle Shout","player") then cast("Battle Shout") return end
/run if not buffed("Rend","target") then cast("Rend") else cast "Sunder Armor" return end
```

```
/run if UnitExists("target") and not IsCurrentAction(1) then UseAction(1) end
/cast Heroic Strike
```
