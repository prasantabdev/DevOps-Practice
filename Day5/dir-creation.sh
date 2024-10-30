#!/bin/bash

dir_name=$1
start_number=$2
end_number=$3

# Check if the correct number of arguments is provided
if [ $# -ne 3 ]; then
    echo "Please enter the inputs properly: $0 foldername start_number end_number"
    exit 1
fi

# Loop to create directories from start_number to end_number
for (( i=start_number; i<=end_number; i++ )); do
    mkdir "${dir_name}_${i}"  # Use $i instead of $start_number to create unique directories
done

