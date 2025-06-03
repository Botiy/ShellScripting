#!/bin/bash

LOGFILE="FileManagerLog.txt"
exec > "$LOGFILE" 2>&1

echo "=== Script started at $(date) ==="

# Create and move into a working directory
mkdir -p NewDirectory
cd NewDirectory || exit
echo "Created and moved into MyWorkspace directory"

# Create subdirectories and files
mkdir -p Docs Images Backups
touch Docs/Report.txt Images/Photo.png
echo "Created subdirectories and files"

# List contents in various ways
echo "Listing with ls -l:"
ls -l
echo "Listing all files (including hidden) with ls -a:"
ls -a
echo "Listing with human-readable sizes:"
ls -lh

# Step 4: Copy and move files
cp Docs/Report.txt Backups/Report_backup.txt
mv Images/Photo.png Images/VacationPhoto.png
echo "Copied and renamed files"

# Step 5: Remove a file and a directory
rm Docs/Report.txt
rmdir Docs
echo "Removed file and empty directory"

# Step 6: Final list of all contents
echo "Final listing of working directory:"
ls -lR

echo "=== Script finished at $(date) ==="
