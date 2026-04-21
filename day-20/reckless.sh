#!/bin/bash

# We define the correct variable here
DESTINATION="bronze_layer"

echo "Step 1: Starting data load..."

# We intentionally misspell it here!
# Bash will evaluate $DESTINATON as completely empty.
cp raw_sales.csv $DESTINATON

echo "Step 2: Deleting raw data..."
rm raw_sales.csv

echo "Pipeline completed successfully! (Even though it failed)"
