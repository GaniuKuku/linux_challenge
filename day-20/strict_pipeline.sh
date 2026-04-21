#!/bin/bash
set -euo pipefail

DESTINATION="bronze_layer"

echo "Step 1: Starting data load..."

# The same typo...
cp raw_sales.csv $DESTINATON

echo "Step 2: Deleting raw data..."
rm raw_sales.csv

echo "Pipeline completed successfully!"
