Affliction Warlock Macros ✨
A collection of World of Warcraft macros for optimizing Affliction Warlock rotation and utility.

🔄 DOT Rotation Macro
Description: This macro handles the core DOT rotation with conditional logic for curse selection and Life Tap functionality.

```
/run if IsAltKeyDown() then cast("Life Tap") return end
/run if UnitMana("target")>0 then if not buffed("Curse of Tongues","target") then cast("Curse of Tongues") return end else if not buffed("Curse of Recklessness","target") then cast("Curse of Recklessness") return end end
/run if not buffed("Curse of Agony","target") then cast("Curse of Agony") return end
/run if not buffed("Corruption","target") then cast("Corruption") return end
/run if not buffed("Siphon Life","target") then cast("Siphon Life") return end
```

🔥 DOT Rotation + Immolate Macro
Description: Extended rotation that includes Immolate for situations where you want to add fire damage to your DOT setup.

```
/run if IsAltKeyDown() then cast("Life Tap") return end
/run if UnitMana("target")>0 then if not buffed("Curse of Tongues","target") then cast("Curse of Tongues") return end else if not buffed("Curse of Recklessness","target") then cast("Curse of Recklessness") return end end
/run if not buffed("Curse of Agony","target") then cast("Curse of Agony") return end
/run if not buffed("Corruption","target") then cast("Corruption") return end
/run if not buffed("Siphon Life","target") then cast("Siphon Life") return end
/run if not buffed("Immolate","target") then cast("Immolate") return end
/run cast("Searing Pain")
```

🛡️ Buff & Utility Macro
Description: Handles essential buffs and consumable creation with smart checking.

```
/run if not buffed("Demon Armor") then cast("Demon Armor") return end
/run if not FindItem("Healthstone") then cast("Create Healthstone") return end
/run if not buffed("Firestone") then for b=0,4 do for s=1,GetContainerNumSlots(b) do local n=GetContainerItemLink(b,s) if n and strfind(n,"Firestone") then UseContainerItem(b,s) return end end end CastSpellByName("Create Firestone") end
/run if not buffed("Soulstone Resurrection") then cast("Create Soulstone") end
```

😨 Crowd Control Macro
Description: Smart CC macro that chooses between Fear, Banish, and Howl of Terror based on target type and modifier key.

```
/run if IsAltKeyDown() then cast"Howl of Terror" else local CT = UnitCreatureType("target") if CT == "Demon" or CT == "Elemental" then CastSpellByName("Banish") else CastSpellByName("Fear") end end
```

📝 Features
Conditional curse selection based on target's mana

Alt-key modifier for Life Tap/Howl of Terror

Smart buff checking to avoid overwrites

Automatic consumable creation when missing

Intelligent CC selection based on creature type


Banish/Fear Macro
Description: Smart crowd control that chooses Banish for Demons/Elementals, Fear for others, with Alt-key for Howl of Terror.

```
/run if IsAltKeyDown() then cast"Howl of Terror" else local CT = UnitCreatureType("target") if CT == "Demon" or CT == "Elemental" then CastSpellByName("Banish") else CastSpellByName("Fear") end end
```

Shadow Bolt / Dark Harvest Macro
Description: Casts Shadow Bolt normally, or Dark Harvest when Alt is held.

```
/run if IsAltKeyDown() then cast "Shadow Bolt" else cast "Dark Harvest" end
```

Death Coil / Shoot Macro
Description: Death Coil for damage/fear, or Shoot when Alt is held.

```
/run if IsAltKeyDown() then cast "Shoot" else cast "Death Coil" end
```
Pet Follow / Healthstone Macro
Description: Calls your pet to follow, or uses Healthstone when Alt is held.

```
/run if IsAltKeyDown() then use "Healthstone" else PetFollow() end
```
Demon Summon/Sacrifice Macro
Description: Summons Voidwalker or sacrifices current pet. Uses Spellstone when Alt is held.

```
/run if IsAltKeyDown() then UseItemByName("Spellstone") else if UnitExists("pet") then cast("Sacrifice") else cast("Summon Voidwalker") end end
```
Drain Life/Soul / Mount Macro
Description: Smart draining macro with mount summoning out of combat.

```
/run if not CastingBarFrame.channeling then if IsAltKeyDown() then cast("Drain Life") else if not UnitAffectingCombat("player") then cast("Summon Felsteed") else cast("Drain Soul") end end end
```
Enslave Demon / Summon Macro
Description: Enslaves Demon targets, otherwise summons Voidwalker. Sacrifice when Alt is held.

```
/run if IsAltKeyDown() then cast"Sacrifice" else local CT = UnitCreatureType("target") if CT == "Demon" then CastSpellByName("Enslave Demon") else CastSpellByName("Summon Voidwalker") end end
```
Soul Fire / Hellfire Macro
Description: Casts Soul Fire normally, or Hellfire when Alt is held.

```
/run if IsAltKeyDown() then cast "Hellfire" else cast "Soul Fire" end
```
Panic Consumables Macro
Description: Quick-use for Healthstone (normal) or Spellstone (Alt).

```
/run if IsAltKeyDown() then UseItemByName("Healthstone") else UseItemByName("Spellstone") end
```
Pet Attack / Rain of Fire Macro
Description: Commands pet to attack, or casts Rain of Fire when Alt is held.

```
/run if IsAltKeyDown() then cast "Rain of Fire" else PetAttack() end
```
Shadow Ward / Health Funnel Macro
Description: Casts Shadow Ward for protection, or Health Funnel to heal pet when Alt is held.

```
/run if IsAltKeyDown() then cast "Health Funnel" else cast "Shadow Ward" end
```
🎯 Usage Pattern
Normal Click: Primary function

Alt + Click: Secondary/alternate function

Most macros include smart target/state checking

Prevents spell queuing conflicts

