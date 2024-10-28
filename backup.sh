#!/bin/bash

sourdir="/home/sudarshan/work/test"  # Source directory to backup
backupdir="/home/sudarshan/backup"   # Backup directory

date=$(date +%Y%m%d_%H%M%S)          # Get current date and time
backupfil="backup_$date.tar.gz"       # Backup file name

# Check if the backup directory exists, if not, create it
if [ ! -d "$backupdir" ]; then
    mkdir -p "$backupdir"
fi

# Create the backup using tar and gzip
tar -czf "$backupdir/$backupfil" "$sourdir"

# Check if the backup command was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully"
    echo "Backup is saved as $backupdir/$backupfil"
else
    echo "Backup failed"
fi

