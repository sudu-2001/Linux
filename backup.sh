#!/bin/bash

sourcedir="/home/sudarshan/sud1"
backupdir="/home/sudarshan/backup"
date=$(date +%Y%m%d_%H%M%S)  # Corrected date format
backupfil="backup_$date.tar.gz"

if [ ! -d "$backupdir" ]; then
    mkdir -p "$backupdir"
fi

tar -czf "$backupdir/$backupfil" "$sourcedir"

if [ $? -eq 0 ]; then
    echo "Backup of files successfully completed"
else
    echo "Not completed successfully"
fi
