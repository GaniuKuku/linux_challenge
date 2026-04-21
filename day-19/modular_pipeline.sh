#!/bin/bash

# --- FUNCTION DEFINITIONS ---

log_message() {
    # Capture the exact current time
    local TIME_STAMP=$(date +"%Y-%m-%d %H:%M:%S")
    # Print the timestamp followed by the message passed to the function
    echo "[$TIME_STAMP] INFO: $1"
}

# --- MAIN PIPELINE EXECUTION ---

log_message "Pipeline execution started."

# Simulate some work
sleep 2
log_message "Connecting to database..."

sleep 2
log_message "Extracting 50,000 rows..."

sleep 2
log_message "Pipeline execution completed successfully."
