#!/bin/bash

INPUT_FILE="people.csv"
OUTPUT_FILE="CleanedPeople.csv"
LOG_FILE="CutLog.txt"

# Start logging
exec > "$LOG_FILE" 2>&1
echo "=== Cut Script Started at $(date) ==="

# Check input file
if [ ! -f "$INPUT_FILE" ]; then
    echo "Input file $INPUT_FILE not found! Creating sample..."
    echo -e "Name,Age,City\nAlice,30,Paris\nBob,25,London\nCharlie,35,Berlin" > "$INPUT_FILE"
else
    echo "Input file $INPUT_FILE exists. Processing..."
fi

# Cut name (1st) and city (3rd) fields, remove header
echo "Extracting Name and City from $INPUT_FILE..."
cut -d ',' -f 1,3 "$INPUT_FILE" > "$OUTPUT_FILE"

echo "Result:"
cat "$OUTPUT_FILE"

echo "=== Cut Script Finished at $(date) ==="