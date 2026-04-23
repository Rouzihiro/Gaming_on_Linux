# WoW Ascension (Epoch) on Apple M1 – UMU Proton Setup

## Run
muvm bash  
--> run the script

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
export UMU_LOG=1
export FEX_X87REDUCEDPRECISION=1

# IMPORTANT: allow proper driver detection
unset MESA_LOADER_DRIVER_OVERRIDE

# Reduce swapchain issues (flicker fix)
export DXVK_FRAME_RATE=60
export vblank_mode=0

# Avoid async bugs on ARM
unset DXVK_ASYNC

# Disable esync/fsync (still good idea)
export PROTON_NO_ESYNC=1
export PROTON_NO_FSYNC=1

umu-run "$HOME/Games/Ascension/resources/epoch-live/Ascension.exe"
``
Save as:

epoch

alternatively run with wine:

``
#!/bin/bash

export WINEPREFIX="$HOME/Games/wine-wow-clean"
export FEX_X87REDUCEDPRECISION=1

unset MESA_LOADER_DRIVER_OVERRIDE

export DXVK_FRAME_RATE=60
export vblank_mode=0

export WINEESYNC=0
export WINEFSYNC=0

wine "$HOME/Games/Ascension/resources/epoch-live/Ascension.exe"
``

---

## 📦 Requirements

DXVK in case you chose the wine method  
https://github.com/doitsujin/dxvk  
download the latest tar

cp x64/*.dll $WINEPREFIX/drive_c/windows/system32/
cp x32/*.dll $WINEPREFIX/drive_c/windows/syswow64/

DXVK is handled automatically by Proton / UMU  
(no manual DLL copying required)

---

## ⚙️ Notes

---

### ⚠️ Important (Asahi / M1 specific)
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


## 📌 Conclusion of prior crashes

This issue was not a GPU or Wine bug — it is a **presentation layer mismatch between Wine, DXVK, and compositor scaling**.

Once resolution is unified across:
- game config
- window system
- Wine launch mode

…the crashes disappear completely.
