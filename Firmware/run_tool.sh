#!/bin/bash

# Determine architecture
ARCH=$(uname -m)

# Map architecture to the appropriate filename
case "$ARCH" in
    "aarch64")
        FILE="3DO_FW_TOOL_aarch64"
        ;;
    "armv7l")
        FILE="3DO_FW_TOOL_armv7a"
        ;;
    "armv8l")
        FILE="3DO_FW_TOOL_armv8a"
        ;;
    "x86_64")
        FILE="3DO_FW_TOOL_x64"
        ;;
    "i686" | "i386")
        FILE="3DO_FW_TOOL_x86"
        ;;
    "arm")
        FILE="3DO_FW_TOOL_armeabi"
        ;;
    "armhf")
        FILE="3DO_FW_TOOL_armeabihf"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

# Download the appropriate file
URL="https://raw.githubusercontent.com/3DO-EU/Enclosure-Nozzle-Camera-V2/main/Firmware/FW_TOOL/$FILE"
wget "$URL" -O "$FILE"

# Make the file executable
chmod +x "$FILE"

# Run the executable
./"$FILE"
