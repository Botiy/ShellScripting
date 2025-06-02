#!/bin/bash

LOGFILE="LogOperations.txt"
exec > "$LOGFILE" 2>&1

echo " === Script started at $(date) ==="

create_if_not_exists() {
    if [ ! -f "$1" ]; then
        echo "Creating $1"
        touch "$1"
    else
        echo "$1 already exists, skipping creation."
    fi
}

# Create files only if they don't exist
create_if_not_exists "First.txt"
create_if_not_exists "Second.txt"
create_if_not_exists "Third.txt"

echo "Adding content to first file"
echo "adsgafdafafvadfafd" > First.txt
echo "fgasrgfadga" >> First.txt

echo "Adding content to second file"
echo "Apple Banana vad Birne Grapefruit" > Second.txt

echo "Adding content to third file"
echo "Initial content." > Third.txt
echo "Appended line." >> Third.txt

echo "Searching for keyword in all files..."
grep -i 'vad' *.txt

# List all files
echo "Listing all current .txt files"
ls -l *.txt

echo "=== Script Finished at $(date) ==="
