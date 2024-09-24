#!/bin/bash

declare -A server_command=(

	["sudarshan@127.0.0.1"]="df -h; hostname; whoami; free -h; neofetch"

	["hdoop@127.0.0.1"]="free -m; free -h; neofetch; ipcalc 192.168.1.76"


)

for server in "${!server_command[@]}"; do

	echo "$server command is executing.... "

	ssh "$server" "${server_command[$server]}"

	if [ $? -eq 0 ]; then

		echo "$server command are executing..."

	else

		echo "$server command is not executed..."


	fi

	echo "------------------------------------------------"

	sleep 4

done
