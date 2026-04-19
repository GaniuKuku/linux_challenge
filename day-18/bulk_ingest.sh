#!/bin/bash

# Define the target directory
TARGET_DIR="/home/dynamic/linux_challenge/30-days-of-learning/day-18/bronze_layer"
mkdir -p $TARGET_DIR

echo "Starting bulk ingestion pipeline..."

# Loop through every CSV file in the current folder
for FILE in /home/dynamic/linux_challenge/30-days-of-learning/day-18/*.csv; do
    
    # Check if the file actually exists to prevent errors if the folder is empty
    if [ -f "$FILE" ]; then
        echo "Ingesting $FILE into the Medallion Architecture..."
        
        # Move the file to the bronze layer
        mv "$FILE" "$TARGET_DIR/"
        
        echo "Successfully moved $FILE to $TARGET_DIR."
    fi

done

echo "All available datasets have been processed!"
