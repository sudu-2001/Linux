#!/bin/bash

password='Sudu@2001'

backupdir="/home/sudarshan/work/Linux/database"

date=$(date +"%Y%m%d_%H%M%S")

for db in $(cat database.txt); do

	db_backupdir="$backupdir/$db"

	if [ ! -d "$db_backupdir" ]; then

		mkdir -p "$db_backupdir"

	fi

	backupfile="${db_backupdir}/${db}_${date}_backup.gz"

	echo "Starting the backup..."

	mysqldump -u root -p"$password" "$db" | gzip > "$backupfile"

	if [ $? -eq 0 ]; then

		echo "Bcckup $db is sucessfull completed "

		echo "Backup file: $backupfile"

	else

		echo "Back up is not done successfully"

	fi

	sleep 2

done
