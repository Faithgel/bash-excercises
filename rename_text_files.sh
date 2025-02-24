#!/bin/bash
# Script to rename all .txt files by adding a "_backup" suffix

for file in *.txt; do
    [[ -e "$file" ]] || { echo "No .txt files found."; exit 0; }
    mv "$file" "${file%.txt}_backup.txt"
    echo "Renamed: $file → ${file%.txt}_backup.txt"
done
