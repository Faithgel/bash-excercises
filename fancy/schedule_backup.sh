#!/bin/bash
# Schedule a cron job to run the backup script daily at midnight.

backup_script="$HOME/backup_conf.sh"

if [[ ! -f "$backup_script" ]]; then
    echo "Error: Backup script not found at $backup_script"
    exit 1
fi

cron_job="0 0 * * * $backup_script"

(crontab -l 2>/dev/null; echo "$cron_job") | crontab -

echo "Cron job scheduled: Daily at midnight → $backup_script"
