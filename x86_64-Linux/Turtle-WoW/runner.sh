#!/bin/bash
# WINE prefix
# export WINEPREFIX=$HOME/Games/umu/WoW_prefix

# Proton path
export PROTONPATH=$HOME/.local/share/Steam/compatibilitytools.d/UMU-Proton-9.0-4e

# Disable Steam Runtime auto-update
export UMU_RUNTIME_UPDATE=0

# Launch WoW without auto-upgrading Proton
export PROTON_USE_WINED3D=1 

umu-run $HOME/Games/TurtleWoW/SuperWoWlauncher.exe --no-upgrade
