#!/bin/bash

FILE_PATH="daily_sales.csv"

echo "Checking for new data..."

# Check if the file exists
if [ -f $FILE_PATH ]; then
    echo "SUCCESS: $FILE_PATH found."
    echo "Starting data transformation..."
    # We will simulate processing by copying the file
    cp $FILE_PATH processed_sales.csv
    echo "Pipeline complete!"
else
    echo "ERROR: CRITICAL FAILURE."
    echo "$FILE_PATH is missing. Pipeline halted."
fi
