#!/bin/bash
# Script to move .log files from source to destination directory

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <source_directory> <destination_directory>"
    exit 1
fi

src_dir="$1"
dest_dir="$2"

# Validate directories
if [[ ! -d "$src_dir" || ! -d "$dest_dir" ]]; then
    echo "Error: Both source and destination directories must exist."
    exit 1
fi

log_files=("$src_dir"/*.log)

if [[ ${#log_files[@]} -eq 0 ]]; then
    echo "No .log files found in $src_dir."
    exit 0
fi

mv "$src_dir"/*.log "$dest_dir"/
echo "Moved ${#log_files[@]} .log files from $src_dir to $dest_dir."
