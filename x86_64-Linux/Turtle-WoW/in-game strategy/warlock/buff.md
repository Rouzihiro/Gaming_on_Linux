# Level Mid 30
# Felstone version

```
/run if not buffed("Demon Armor") then cast("Demon Armor") return end
/run if not FindItem("Healthstone") then cast("Create Healthstone") return end
/run if not buffed("Felstone") then for b=0,4 do for s=1,GetContainerNumSlots(b) do local n=GetContainerItemLink(b,s) if n and strfind(n,"Felstone") then UseContainerItem(b,s) return end end end CastSpellByName("Create Felstone") end
/run if not buffed("Soulstone Resurrection") then cast("Create Soulstone (Lesser)") end
```

# Firestone version
```
/run if not buffed("Demon Armor") then cast("Demon Armor") return end
/run if not FindItem("Healthstone") then cast("Create Healthstone") return end
/run if not buffed("Firestone") then for b=0,4 do for s=1,GetContainerNumSlots(b) do local n=GetContainerItemLink(b,s) if n and strfind(n,"Firestone") then UseContainerItem(b,s) return end end end CastSpellByName("Create Firestone") end
/run if not buffed("Soulstone Resurrection") then cast("Create Soulstone (Lesser)") end
```

# kiting
```
/run if IsAltKeyDown() then cast("Sacrifice") return end
/run if not buffed("Curse of Exhaustion","target") then cast("Curse of Exhaustion") return end
/run if not buffed("Curse of Agony","target") then cast("Curse of Agony") return end
/run if not buffed("Corruption","target") then cast("Corruption") return end
/run if not buffed("Siphon Life","target") then cast("Siphon Life") return end
/run if not buffed("Immolate","target") then cast("Immolate") return end
/run cast("Searing Pain")
```
