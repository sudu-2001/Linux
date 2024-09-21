#!/bin/bash

read -p "Enter the email-id: " email

regex="^[a-zA-Z0-9._+%-]+@[a-zA-Z0-9+-]+\.[a-zA-Z]{2,}$"

if [[ $email =~ $regex ]]; then

	echo "Entered email address: $email"

else

	echo "Enter proper email adress"

fi
