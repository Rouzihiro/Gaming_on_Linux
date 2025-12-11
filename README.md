# Gaming on Linux (Asahi/ARM64 & Standard x64)

A comprehensive guide for running Windows games on Linux. This repository covers solutions for both **Apple Silicon Macs (via Asahi Linux)** and **standard x64 Linux PCs**.

## 🍎 Supported Systems

### Apple Silicon (Asahi Linux / ARM64)
- **Systems:** Asahi Linux (Fedora Asahi Remix)
- **Hardware:** Apple Silicon (M1, M2, M3 series)
- **Architecture:** ARM64 with 16k page size

### Standard x64 Linux PCs
- **Systems:** Most mainstream distributions (Ubuntu, Fedora, Arch, etc.)
- **Hardware:** Traditional PCs with Intel or AMD x86-64 processors
- **Architecture:** Standard x86_64

## 🛠️ Core Solutions

### For Apple Silicon (ARM64)
The primary challenge is translating x86-64 game binaries for ARM64 hardware with a 16k page size.
- **Primary Stack:** Wine + FEX compatibility layer
- **Key Components:** Tested version combinations (Wine 10.8 + FEX 2507.1), Lacamar's Wine ARM64EC RPM repository
- **Known Issues:** Stack overflow error resolution

### For Standard x64 Linux PCs
The challenge is running Windows games on a Linux OS without CPU architecture translation.
- **Primary Stack:** Wine or Proton (Steam's enhanced fork of Wine) directly
- **Key Components:** DXVK/VKD3D-Proton for DirectX translation, mature native GPU drivers
- **No need for** complex instruction set emulators (like FEX) or page size virtualization.

## 🎮 Game Compatibility Database

Check individual game directories for tested configurations and playability reports. Entries are tagged for the relevant platform (ARM64 or x64).

## 📚 Contents

- Wine/FEX/Proton installation guides (platform-specific)
- Game-specific configurations
- Troubleshooting guides
- Performance optimizations

## 🔗 Useful Links

### Asahi / ARM64 Specific
- [Asahi Linux](https://asahilinux.org/)
- [Wine Project](https://www.winehq.org/)
- [FEX Emulator](https://fex-emu.com/)
- [Lacamar's Wine ARM64EC RPM](https://github.com/lacamar/wine-arm64ec-rpm)

### Standard x64 Linux
- [ProtonDB](https://www.protondb.com/) - Game compatibility ratings and tweaks
- [Lutris](https://lutris.net/) - Open gaming platform for managing games
- [WineHQ AppDB](https://appdb.winehq.org/) - Application compatibility database

## 🍏 Platform Comparison

| Aspect | Asahi Linux on Apple Silicon (ARM64) | Standard x64 Linux (Intel/AMD) |
| :--- | :--- | :--- |
| **Primary Challenge** | Translating **x86-64** game binaries to run on **ARM64** hardware and managing the **16k page size**. | Running **Windows** games on a **Linux** operating system. |
| **Core Stack** | **FEX** (x86 emulator) + **Wine/Proton**. | **Wine** or **Proton** directly (no CPU emulation). |
| **Graphics Driver** | Reverse-engineered **Honeykrisp (Vulkan)** and **Asahi (OpenGL)** drivers. | Mature open-source (**Mesa**) or proprietary (**NVIDIA/AMD**) GPU drivers. |
| **Performance** | Significant emulation overhead; 16GB+ RAM recommended. | Native CPU execution; overhead is primarily from API translation. |
| **Software** | Custom builds (e.g., Lacamar's Wine ARM64EC RPM) and alpha-stage components. | Vast official support via standard packages, ProtonDB, and Lutris. |

## ⚠️ Disclaimer

This is a community-maintained project. Game compatibility may vary based on system configuration, updates, and individual game requirements.
