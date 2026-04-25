#!/bin/bash
echo "Starting data stream..."
while true; do
    TIMESTAMP=$(date +"%H:%M:%S")
    MEMORY=$((RANDOM % 100))
    echo "[$TIMESTAMP] SERVER_METRIC - CPU: Normal | RAM: $MEMORY%" >> system.log
    sleep 1
done
