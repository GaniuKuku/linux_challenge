#!/bin/bash
echo "Starting massive 100-second data extraction..."
for i in {1..100}; do
    echo "Extracting batch $i/100..."
    sleep 1
done
echo "Extraction complete!"
