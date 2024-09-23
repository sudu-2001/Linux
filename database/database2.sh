#!/bin/bash

password='Sudu@2001'

backupdir="/home/sudarshan/work/Linux"

backupfile="$backupdir/allbackupdatabase_$(date +'%Y%m%d_%H%M%S').sql"

mkdir -p "$backupdir"

echo "Back up of database started"

mysqldump -u root -p"$password" --all-databases > "$backupfile"

sleep 2

if [ $? -eq 0 ]; then

	echo "Backup database is successfully completed"

	echo "backup is done in: $backupfile"

else

echo "Backup of database is not done successfully"

fi
