#!/bin/bash

password='Sudu@2001'

for db in $(cat database.txt); do

	echo "Backup of databases: $db"

	mysqldump -u root -p"$password" --databases "$db" > "${db}.sql"

	if [ $? -eq 0 ]; then

		echo "Backup of $db is succesfully completed."

	else

		echo "Backup of $db is not successfully completed."

	fi

	sleep 2

done
