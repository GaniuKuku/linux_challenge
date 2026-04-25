#!/bin/bash
set -euo pipefail

FILE_PATH=$1
FILE_NAME=$(basename $FILE_PATH)

echo "Worker started: Transforming $FILE_NAME to Silver..."
sleep 2 # Simulating complex data cleaning
mv $FILE_PATH silver_layer/
echo "Worker finished: $FILE_NAME is now Silver."
