#!/bin/bash

# Specify the exact filename
FILE="3DO_FW_TOOL_ratos_2_1"

# Debug output
echo "Downloading file: $FILE"

# Download the file
URL="https://raw.githubusercontent.com/3DO-EU/Enclosure-Nozzle-Camera-V2/main/Firmware/FW_TOOL/$FILE"
wget "$URL" -O "$FILE"

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download the file: $URL"
    exit 1
fi

# Make the file executable
chmod +x "$FILE"

# Debug output before running
echo "Running the executable: $FILE"

# Run the executable
./"$FILE"

# Check if the execution was successful
if [ $? -ne 0 ]; then
    echo "Failed to run the executable: $FILE"
    exit 1
fi

echo "Execution completed successfully."