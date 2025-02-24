#!/bin/bash
# Delete files older than 7 days in a specified directory.

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

if [[ ! -d "$1" ]]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
fi

current_time=$(date +%s)
threshold=$((7 * 24 * 60 * 60))  # 7 days in seconds

for file in "$1"/*; do
    [[ -f "$file" ]] || continue
    mod_time=$(stat -c %Y "$file")
    age=$((current_time - mod_time))
    (( age > threshold )) && rm "$file" && echo "Deleted: $file"
done
