#!/bin/bash

read -p "Enter the prot number: " port

if [ $( expr "$port" : "[0-9]*") -eq 0 ]; then

	echo "Invalid Port number, Enter the correct port number"

else

	echo "the prot number is : $port"

fi
