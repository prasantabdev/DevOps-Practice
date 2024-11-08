#!/bin/bash

source_location=/home/ubuntu/DevOps-Practice/Day9/demo_backup
backup_location=/home/ubuntu/DevOps-Practice/Day9/backup_rotation

# Remove space between variable name and assignment
timestamp=$(date +'%Y-%m-%d-%H-%M-%S')

# Correct the zip command syntax; remove curly braces around variables
zip -r "${backup_location}/backup_${timestamp}.zip" "$source_location"

# Check if the zip command succeeded
if [ $? -eq 0 ]; then
    echo "Backup is completed"

    # Get sorted backups
    sorted_backups=( $(ls -t "$backup_location") )

    # Loop to remove backups, starting from the fourth backup
    for (( i=3; i<${#sorted_backups[@]}; i++ )); do
        rm -rf "${backup_location}/${sorted_backups[i]}"
    done
else
    echo "Backup failed"
fi

