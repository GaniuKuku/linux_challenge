#!/bin/bash

echo "Starting automated backup pipeline..."

# Capture the current date
CURRENT_DATE=$(date +"%Y_%m_%d")

# Define the source and destination
SOURCE_FOLDER="../day-13/"
BACKUP_FILE="log_backup_${CURRENT_DATE}.tar.gz"

echo "Compressing $SOURCE_FOLDER into $BACKUP_FILE"

# Run the compression command quietly using the variables
tar -czf $BACKUP_FILE $SOURCE_FOLDER

echo "Backup pipeline completed successfully!"
