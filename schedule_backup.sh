#!/bin/bash
# Script to set up a cron job for daily backups at midnight

backup_script="$HOME/backup_conf_files.sh"
cron_job="0 0 * * * $backup_script"

# Ensure the script exists
if [[ ! -f "$backup_script" ]]; then
    echo "Error: Backup script '$backup_script' not found."
    exit 1
fi

# Add the cron job
(crontab -l 2>/dev/null; echo "$cron_job") | crontab -

echo "Scheduled daily backup at midnight."
