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
    "armv8l" | "aarch64")
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

# Debug output for the detected architecture and file
echo "Detected architecture: $ARCH"
echo "Downloading file: $FILE"

# Download the appropriate file
URL="https://raw.githubusercontent.com/3DO-EU/Enclosure-Nozzle-Camera-V2/main/Firmware/FW_TOOL/$FILE"
wget "$URL" -O "/tmp/$FILE"

# Check if the file was downloaded successfully
if [ $? -ne 0 ]; then
    echo "Failed to download the file: $URL"
    exit 1
fi

# Make the file executable
chmod +x "/tmp/$FILE"

# Debug output before running the executable
echo "Running the executable: $FILE"

# Run the executable
"/tmp/$FILE"

# Check if the executable ran successfully
if [ $? -ne 0 ]; then
    echo "Failed to run the executable: $FILE"
    exit 1
fi
