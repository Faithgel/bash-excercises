#!/bin/bash
# Script to set read, write, and execute permissions for the owner of all .sh files

for file in *.sh; do
    [[ -e "$file" ]] || { echo "No .sh files found."; exit 0; }
    chmod u+rwx "$file"
    echo "Set permissions for: $file"
done
