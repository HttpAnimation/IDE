#!/bin/bash

# Define the file containing the version number
VERSION_FILE="version.conf"

# Check if the version file exists
if [ ! -f "$VERSION_FILE" ]; then
    echo "1" > "$VERSION_FILE"  # If not, initialize it with 1
else
    # Read the current version from the file and increment it
    current_version=$(<"$VERSION_FILE")
    ((current_version++))
    echo "$current_version" > "$VERSION_FILE"
fi

echo "Current version: $(<"$VERSION_FILE")"

echo "Compiling"
gcc -o Kilt main.c `pkg-config --cflags --libs gtk+-3.0`
echo "Done"
