# The Binding of Isaac Repentance Plus (32-bit)

**Tested on:** Fedora Asahi Remix 42   
**Device:** MacBook Pro M2 Max (96 GB RAM)   
**Kernel:** 6.17.7   
**Mesa:** 25.2.7   
**Wine Version:** 10.14 (ARM64EC)   
**FEX DLL Version:** 2507.1   
**Game Version:** 1.9.7.11   
**Steam DRM:** Steam Stub   

---

### 🟢 Playability
✅ Works as expected   
✅ 60 FPS, minor hangs on room transitions   
⚠️ Some odd controller behaviour/incompatibility   
⚠️ Steamless required: Steam stub must be removed from the game executable to allow it to run outside of Steam   

---

### 🧩 Launch Command
```
sudo dnf copr enable lacamar/wine-arm64ec   
sudo dnf install wine-10.14 fex-emu-wine-2507.1 --allowerasing --refresh
wine isaac-ng.exe.unpacked.exe
```

---

### 🧠 Notes
- **Mods** Work as expected when installed via Steam or manually to the game files.
