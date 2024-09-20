#!/bin/bash

service="mysql"

echo "Select Option"

echo "1)Start the service"

echo "2)Stop the service"

echo "3)Status od service"

echo "4)Exit"

read -p "Enter the choice [1-4]:" choice

case "$choice" in

	1) echo "Starting the service"

	   sudo systemctl start "$service".service

	   echo "$service is started"

	   ;;

	2) echo "Stoping the service"

	   sudo systemctl stop "$service".service

	   echo "$service is stopped"

	   ;;

	3) echo "Showing the status"

	   sudo systemctl status "$service".service

	   echo "$service Status"

	   ;;

	4) echo "Exiting ...."

	   exit 0

	   ;;

	*) echo "Invalid choice"

	   ;;

esac

exit 0
