#!/bin/bash
# Script to list all .txt files in the current directory

txt_files=(*.txt)

if [[ ${#txt_files[@]} -eq 0 ]]; then
    echo "No .txt files found in the current directory."
    exit 0
fi

echo "Text files in the current directory:"
for file in "${txt_files[@]}"; do
    echo "$file"
done
