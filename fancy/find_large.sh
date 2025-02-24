#!/bin/bash
# List files larger than 100MB in the current directory.

threshold=$((100 * 1024 * 1024))  # 100MB in bytes

for file in *; do
    [[ -f "$file" ]] || continue
    size=$(stat -c %s "$file")  # Get file size in bytes
    (( size > threshold )) && echo "$file - $(($size / 1024 / 1024))MB"
done
