#!/bin/bash
# Script to list all files in a given directory

read -rp "Enter directory path: " dir

# Validate input
if [[ ! -d "$dir" ]]; then
    echo "Error: Directory '$dir' does not exist."
    exit 1
fi

echo "Files in '$dir':"
ls -lh "$dir"
