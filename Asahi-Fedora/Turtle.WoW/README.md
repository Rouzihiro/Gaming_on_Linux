muvm bash
DXVK_HUD=1 FEX_X87REDUCEDPRECISION=1 umu-run WoW.exe

--> runner.sh script included in repo

So far the best way to run the game, including superwow

Requirements:

DXVK
https://github.com/doitsujin/dxvk

export WINEPREFIX=/path/to/wineprefix
cp x64/*.dll $WINEPREFIX/drive_c/windows/system32
cp x32/*.dll $WINEPREFIX/drive_c/windows/syswow64
winecfg

Verify that your application uses DXVK instead of wined3d by enabling the HUD (see notes below).

In order to remove DXVK from a prefix, remove the DLLs and DLL overrides, and run wineboot -u to restore the original DLL files.

Tools such as Steam Play, Lutris, Bottles, Heroic Launcher, etc will automatically handle setup of dxvk on their own when enabled.

DLL dependencies
Listed below are the DLL requirements for using DXVK with any single API.

d3d8: d3d8.dll and d3d9.dll
d3d9: d3d9.dll
d3d10: d3d10core.dll, d3d11.dll and dxgi.dll
d3d11: d3d11.dll and dxgi.dll
