#!/bin/bash

password="Sudu@2001"

for db in $(cat database.txt); do
    echo "Backing up database: ${db}"
    sudo mysqldump -u root -p"$password" "$db" > "${db}.sql"

    if [ $? -eq 0 ]; then
        echo "Backup of ${db} successfully completed"
    else
        echo "Backup of ${db} not successfully done"
        exit 1
    fi

    sleep 2
done
