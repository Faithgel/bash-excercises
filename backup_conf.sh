#!/bin/bash
# Script to backup all .conf files from /etc/ to a timestamped backup directory

backup_dir="$HOME/backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"

cp /etc/*.conf "$backup_dir"/ 2>/dev/null

if [[ $? -eq 0 ]]; then
    echo "Backup completed: $backup_dir"
else
    echo "No .conf files found or permission denied."
fi
