#!/bin/bash
# Script to move .log files from source to destination directory without mv

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

src_dir="$1"
dest_dir="$2"

if [[ ! -d "$src_dir" || ! -d "$dest_dir" ]]; then
    echo "Error: Both source and destination directories must exist."
    exit 1
fi

for file in "$src_dir"/*.log; do
    [[ -e "$file" ]] || { echo "No .log files found."; exit 0; }
    cat "$file" > "$dest_dir/$(basename "$file")" && rm "$file"
    echo "Moved: $(basename "$file") to $dest_dir"
done
