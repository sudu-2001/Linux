#!/bin/bash

logfile="logfile.log"

collect_info() {

	read -p "Enter your name: "  username

	read -p "Enter your email: " email

	timestamp=$(date '+%Y%M%D %H:%M:%S')

	echo -e "$timestamp \nName: $username \nE-mail: $email" >> "$logfile"

}

collect_info

