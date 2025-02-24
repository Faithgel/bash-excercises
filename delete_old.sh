#!/bin/bash
# Script to delete files older than 7 days in a specified directory

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir=$1

if [[ ! -d "$dir" ]]; then
    echo "Error: Directory '$dir' does not exist."
    exit 1
fi

find "$dir" -type f -mtime +7 -exec rm -v {} +
echo "Deleted files older than 7 days in '$dir'."
