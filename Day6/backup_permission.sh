#!/bin/bash

location=$1

# Check if location is provided
if [[ -z "$location" ]]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

# Check if the provided location exists and is a directory
if [[ ! -d "$location" ]]; then
    echo "Error: $location is not a valid directory."
    exit 1
fi

# List permissions and file names, redirecting to backup_permission.txt
ls -ltr "$location" | awk '{print $1, $9}' > backup_permission.txt

