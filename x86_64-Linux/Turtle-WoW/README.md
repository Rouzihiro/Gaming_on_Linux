# Turtle WoW (Private Server)

**Tested on:** Arch Linux x86_64   
**Device:** HP EliteBook x360 1030 G3 (SBKPF)   
**Kernel:** Linux 6.17.9-arch1-1  
**wine:** version 10.20
**umu-launcher** version 1.3.0 (3.13.7)
**Proton Version:**  UMU-Proton-9.0-4e
**Game Version:** Turtle WoW Client (1.16.4 Build 6826)

---

### 🟢 Playability
✅ Runs out of the box  
✅ Stable  

---

### 📋 Installation & Setup Notes
The Turtle WoW private server client for patch 1.16.4 runs flawlessly on a standard x86_64 Linux system. No complex emulation layers are required.

1.  **Download** the standard Windows client from the official Turtle WoW website.
2.  **Install and run** the client using your configured Wine environment (e.g., `wine Turtle\ WoW.exe`).
3.  **Optional Enhancements:**
    *   **VanillaFixes**: Apply [VanillaFixes](https://github.com/hannesmann/vanillafixes) for bug fixes and quality-of-life improvements.
    *   **SuperWoW & SuperAPI**: For advanced features like auto-loot, install [SuperWoW](https://github.com/balakethelock/SuperWoW) and the required [SuperAPI](https://github.com/balakethelock/SuperAPI) addon.

### 🛠️ Tested System & Result
**Software:**
*   **OS:** Arch Linux x86_64
*   **Kernel:** 6.17.9-arch1-1
*   **Window Manager:** Sway (Wayland)
*   **Shell:** zsh 5.9

**Hardware:**
*   **CPU:** Intel(R) Core(TM) i5-8350U (8) @ 3.60 GHz
*   **GPU:** Intel UHD Graphics 620 (Integrated)
*   **RAM:** 7.60 GiB

**Result:** The client works out of the box without any issues, crashes, or performance problems. This confirms native x86_64 performance on standard Linux.

### 🧩 Launch Command
```bash
PROTON_USE_WINED3D=1 umu-run SuperWoWlauncher.exe
```
or
```bash
wine SuperWoWlauncher.exe
```

---

### 🧠 Notes
- **Additional suggested addons**
  ```
[**CleveROidMacros**](https://github.com/bhhandley/CleveRoidMacros)
Use more advanced and modern style macros with World of Warcraft 1.12.1
  ```
