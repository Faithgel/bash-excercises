#!/bin/bash
# Script to extract all lines containing "ERROR" from a log file

log_file="/var/log/syslog"  # Change to your log file

if [[ ! -f "$log_file" ]]; then
    echo "Error: Log file '$log_file' does not exist."
    exit 1
fi

grep "ERROR" "$log_file"
