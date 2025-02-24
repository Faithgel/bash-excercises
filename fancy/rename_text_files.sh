#!/bin/bash
# Script to rename all .txt files by adding a "_backup" suffix

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

if [[ ! -d "$1" ]]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

for file in "$1"/*.txt; do
    [[ -e "$file" ]] || { echo "No .txt files found."; exit 0; }
    new_file="${file%.txt}_backup.txt"
    cat "$file" > "$new_file" && rm "$file"
    echo "Renamed: $file → $new_file"
done
