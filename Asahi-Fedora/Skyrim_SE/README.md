# The Elder Scrolls V: Skyrim Special Edition (64-bit)

**Tested on:** Fedora Asahi Remix 42  
**Device:** MacBook M1 (8 GB RAM)  
**Kernel:** 6.11.0  
**Mesa:** 25.2.4  
**Proton Version:** Proton 10.0  
**Game Version:** 1.6.x (Anniversary / SE)

---

### 🟢 Playability
✅ Launches and runs out-of-the-box  
✅ Smooth 60 FPS (V-Sync locked)  
⚠️ Minor Xalia “x11 not available” warning (harmless)  
⚠️ GStreamer `libbz2.so.1.0` warning (no effect on gameplay)

---

### 🧩 Launch Command (Steam Example) - NOT IMPLEMENTED YET
```bash
gamemoderun mangohud gamescope \
  -w 2560 -h 1440 -f \
  --sharpness 0.6 \
  --force-grab-cursor -- \
  %command%
```

---

### 🧠 Notes
- **Xalia overlay** warnings can be ignored — they come from Proton’s accessibility system expecting X11.  
- **GStreamer** plugin errors are benign; Fedora Asahi ships a newer `libbz2.so`.  
- Runs best in **borderless fullscreen** at native 2880×1800 (scaled).  
- **Mods** work fine using the same prefix:  
  ```
  /home/rey/Games/SkyrimSE_prefix
  ```
