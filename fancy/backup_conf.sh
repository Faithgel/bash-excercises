#!/bin/bash
# Backup all .conf files from /etc/ to a backup directory with a timestamp.

backup_dir="$HOME/backup_$(date +%Y%m%d_%H%M%S)"

mkdir -p "$backup_dir"

for file in /etc/*.conf; do
    [[ -f "$file" ]] && cat "$file" > "$backup_dir/$(basename "$file")"
done

echo "Backup completed: $backup_dir"
