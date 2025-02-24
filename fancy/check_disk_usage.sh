#!/bin/bash
# Script to check disk usage without df

threshold=80

# Get total and used blocks from /proc/mounts
read -r total used <<< "$(awk '/\/$/ {print $2, $3}' /proc/mounts)"

if [[ -z "$total" || -z "$used" ]]; then
    echo "Error: Could not determine disk usage."
    exit 1
fi

usage=$(( 100 * used / total ))

echo "Current disk usage: $usage%"

(( usage > threshold )) && echo "Warning: Disk usage exceeds ${threshold}%!"
