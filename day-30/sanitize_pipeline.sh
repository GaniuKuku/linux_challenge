#!/bin/bash
# STRICT MODE
set -euo pipefail

INPUT="raw_customers.csv"
OUTPUT="clean_customers.csv"

echo "========================================="
echo "🛡️ Initiating PII Sanitization Engine..."
echo "========================================="

# The AWK Command:
# -F,   : Sets the input delimiter to a comma
# -v OFS=, : Sets the output delimiter to a comma
awk -F, -v OFS=, '
# Rule 1: If it is the very first row (Header), just print it exactly as is
NR==1 { 
    print $0 
}

# Rule 2: For every row AFTER the header, apply the masking logic
NR>1 {
    # 1. Mask the Email (Column 3)
    # Split the email by the "@" symbol into an array called "email_parts"
    split($3, email_parts, "@")
    # Keep the first part (the name), but replace the domain with "***.redacted"
    $3 = email_parts[1] "@***.redacted"

    # 2. Mask the Credit Card (Column 4)
    # Keep only the last 4 digits using the substr() function
    last_four = substr($4, length($4)-3, 4)
    # Replace the card with stars, plus the last four digits
    $4 = "****-****-****-" last_four

    # 3. Print the perfectly sanitized row
    print $1, $2, $3, $4
}' "$INPUT" > "$OUTPUT"

echo "[$(date)] ✅ Data successfully sanitized."
echo "-> Raw file preserved. Clean file saved to $OUTPUT."
echo "========================================="
