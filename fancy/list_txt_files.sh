#!/bin/bash
# Script to list all .txt files in a given directory

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

if [[ ! -d "$1" ]]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

found=false
for file in "$1"/*.txt; do
    [[ -e "$file" ]] && echo "$file" && found=true
done

$found || echo "No .txt files found in '$1'."
