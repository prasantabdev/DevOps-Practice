#!/bin/bash

location=$1
file=$2
backup_permission_file=$3

# Check if the specified file exists
if [ ! -f "$location/$file" ]; then
    echo "File '$location/$file' does not exist."
    exit 1
fi

# Retrieve the permission string from the backup permissions file
permission=$(grep "$file" "$backup_permission_file" | awk '{print $1}')

# Check if permission was retrieved successfully
if [ -z "$permission" ]; then
    echo "No permissions found for '$file' in '$backup_permission_file'."
    exit 1
fi


# Function to convert permission string to numeric
convert_to_numeric() {
    local perm=$1
    local owner=0
    local group=0
    local others=0

    # Convert owner permissions
    if [[ ${perm:1:1} == "r" ]]; then owner=$((owner + 4)); fi
    if [[ ${perm:2:1} == "w" ]]; then owner=$((owner + 2)); fi
    if [[ ${perm:3:1} == "x" ]]; then owner=$((owner + 1)); fi

    # Convert group permissions
    if [[ ${perm:4:1} == "r" ]]; then group=$((group + 4)); fi
    if [[ ${perm:5:1} == "w" ]]; then group=$((group + 2)); fi
    if [[ ${perm:6:1} == "x" ]]; then group=$((group + 1)); fi

    # Convert others permissions
    if [[ ${perm:7:1} == "r" ]]; then others=$((others + 4)); fi
    if [[ ${perm:8:1} == "w" ]]; then others=$((others + 2)); fi
    if [[ ${perm:9:1} == "x" ]]; then others=$((others + 1)); fi

    # Output the numeric representation
    echo "$owner$group$others"
}

# Example usage
numeric_perm=$(convert_to_numeric "$permission")


# Apply the retrieved permissions to the specified file
chmod "$numeric_perm" "$location/$file"  # Corrected to include the full path

echo "Applied permissions '$permission' to '$location/$file'."


