# WoW Ascension (Epoch) on Apple M1 – UMU Proton Setup

## Run

epoch

or manually:

muvm bash  
./epoch

---

## ✔️ Best working configuration (Asahi Linux + M1)

- Vulkan (DXVK) enabled  
- No OpenGL fallback  
- No driver overrides  
- Limited framerate (prevents flicker + X crash)  

---

## 🚀 Runner
``
#!/bin/bash

export WINEPREFIX="$HOME/Games/umu/WoW_prefix"  
export PROTONPATH="$HOME/.local/share/Steam/compatibilitytools.d/UMU-Proton-9.0-4e"  

export UMU_RUNTIME_UPDATE=0  
export UMU_LOG=1  

export FEX_X87REDUCEDPRECISION=1  

unset MESA_LOADER_DRIVER_OVERRIDE  

export DXVK_FRAME_RATE=60  
export vblank_mode=0  

unset DXVK_ASYNC  

export PROTON_NO_ESYNC=1  
export PROTON_NO_FSYNC=1  

umu-run "$HOME/Games/Ascension/resources/epoch-live/Ascension.exe" --no-upgrade  
``
Save as:

epoch

---

## 📦 Requirements

DXVK  
https://github.com/doitsujin/dxvk  

Handled automatically by Proton / UMU  
(no manual DLL copying required)

---

## ⚙️ Notes

### Enable DXVK HUD (debug)

DXVK_HUD=1 ./epoch

---

### ⚠️ Important (Asahi / M1 specific)

Do NOT use:

PROTON_USE_WINED3D=1

Do NOT set:

MESA_LOADER_DRIVER_OVERRIDE=asahi

---

## 🖥️ In-game settings (required)

Edit:

~/Games/Ascension/resources/epoch-live/WTF/Config.wtf

Set:

SET gxWindow "1"  
SET gxFullscreen "0"  
SET gxMaximize "1"  
SET gxVSync "0"  
SET gxTripleBuffer "0"  

---

## 🧠 Why this works

- DXVK (Vulkan) is required on ARM + FEX  
- OpenGL path (wined3d) is incomplete  
- Limiting FPS avoids swapchain instability  
- Windowed mode prevents Xwayland crashes  

---

## 🧹 Troubleshooting

### Game flickers / crashes

Make sure:

unset MESA_LOADER_DRIVER_OVERRIDE  

and:

DXVK_FRAME_RATE=60  

---

### Game does not start

Check Vulkan:

vkcube  

---

### Debug logs

UMU_LOG=1 ./epoch  

---

## 🏁 Status

✔️ Stable gameplay  
✔️ No flickering  
✔️ No X server crashes  
