#!/bin/bash
# Script to monitor a system log file in real-time

log_file="/var/log/syslog"  # Change to "/var/log/auth.log" if needed

if [[ ! -f "$log_file" ]]; then
    echo "Error: Log file '$log_file' does not exist."
    exit 1
fi

echo "Monitoring $log_file..."
tail -f "$log_file"
