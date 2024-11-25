#!/bin/bash

# Title: Clean Apple Temp Files on Unraid Array
# Description: Finds and deletes Apple temporary files like ._ files and .DS_Store on the Unraid array.

# Define array paths
ARRAY_PATHS="/mnt/disk* /mnt/user"

echo "Starting cleanup of Apple temporary files on Unraid array..."

# Function to delete files
delete_apple_temp_files() {
    local path=$1

    echo "Scanning $path for Apple temp files..."
    find "$path" -type f \( -name "._*" -o -name ".DS_Store" \) -exec rm -v {} \;
}

# Loop through array paths
for path in $ARRAY_PATHS; do
    if [ -d "$path" ]; then
        delete_apple_temp_files "$path"
    else
        echo "Warning: $path does not exist or is not accessible. Skipping..."
    fi
done

echo "Cleanup completed!"
