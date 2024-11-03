#!/bin/bash

location=$1
owner=$2
group=$3
others=$4

# List files and directories in the specified location
files_dirs=$(ls -1 "$location")  # Using -1 to get one file per line

# Loop through each file/directory
for file in $files_dirs; do
    chmod "$owner$group$others" "$location/$file"  # Corrected chmod usage
done

