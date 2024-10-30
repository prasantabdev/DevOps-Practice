#!/bin/bash

source_location=/home/ubuntu/DevOps-Practice/Day5/backup
backup_location=/home/ubuntu/DevOps-Practice/Day5

# Remove space between variable name and assignment
timestamp=$(date +'%Y-%m-%d-%H-%M-%S')

# Correct the zip command syntax; remove curly braces around variables
zip -r "${backup_location}/backup_${timestamp}.zip" "$source_location"

# Check if the zip command succeeded
if [ $? -eq 0 ]; then
    echo "Backup is completed"
else
    echo "Backup failed"
fi

