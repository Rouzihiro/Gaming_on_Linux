# Wine & FEX Compatibility Fix for ARM64 (Asahi Linux)

## Issue Description
Stack overflow errors when running Windows applications on ARM64 systems with 16k page size (Asahi Linux) due to compatibility mismatches between Wine and FEX DLLs.

## Solution
Use specific compatible versions of Wine and FEX from the COPR repository to resolve the stack overflow errors.

## Quick Fix Commands

# Install compatible versions of Wine and FEX
```sudo dnf --refresh install -y wine-10.8 fex-emu-wine-2507.1 --allowerasing```

# Create and test in a fresh Wine prefix
```export WINEPREFIX=~/.test-prefix
wineboot -u
wine Game.exe```

## Wine ARM64EC RPM
Thanks to the amazing work by Lacamar (https://github.com/lacamar/wine-arm64ec-rpm), you can run Windows 32-bit and 64-bit software on aarch64 16k Linux hosts (e.g., Asahi Linux). This provides pre-built Wine packages without needing to compile them yourself.

### Setup Commands:
# Enable Lacamar's COPR repository
``sudo dnf copr enable lacamar/wine-arm64ec``

# Install Wine and FEX from the repo
`sudo dnf install fex-emu-wine wine`

# For specific compatible versions (recommended for stability):
`sudo dnf install wine-10.8 fex-emu-wine-2507.1`

### Example Usage:
With the combination of wine-10.8 and fex-emu-wine-2507.1, I successfully ran Windows Ren'Py games without having to install Ren'Py separately on the host system.

## Background
The latest versions of Wine and FEX sometimes have compatibility issues on ARM64 systems with 16k page size (Asahi Linux). The stack overflow errors occur due to mismatches between Wine and FEX DLLs, particularly related to page size handling.

### Version Compatibility
Recommended Combination: Wine 10.8 + FEX 2507.1

These versions have been tested and provide reliable compatibility

Older versions are maintained in the COPR repository for compatibility purposes

### Troubleshooting
If the recommended combination doesn't work:

Try different combinations of Wine and FEX versions from the COPR repo

Always test in a fresh Wine prefix (export WINEPREFIX=~/.test-prefix)

The exhaustive approach of testing various combinations can be tedious but may be necessary

### Future Improvements
Compatibility issues with 16k page size systems are expected to improve in future versions of Wine and FEX.

### Notes
Always use --allowerasing flag when installing these specific versions

Testing in a fresh Wine prefix is recommended to avoid conflicts from previous installations

This solution is particularly relevant for Asahi Linux users running on Apple Silicon devices
