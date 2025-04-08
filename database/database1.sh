#!/bin/bash

password="Sudu@2001"

backup_dir="/home/sudarshan/work/Linux/database"

date=$(date "+%Y%m%d_%H%M%S")

for db in $(cat database.txt); do

	db_backup_dir="$backup_dir/$db"

	if [ ! -d "$db_backup_dir" ]; then

		mkdir -p "$backupdir"

	fi

	echo "Back up database is started..."

	backup_file="${db_backup_dir}/${db}_${date}_backup.gz"

	mysqldump -u root -p"$password" "${db}"| gzip > "$backup_file"

	if [ $? -eq 0 ]; then

		echo "${db} is successfully done"

		echo "Backup of file: ${db}"

	else

		echo "${db} back up is not done sucessfully"

	fi

	sleep 4

done
