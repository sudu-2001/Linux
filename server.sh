#! /bin/bash

declare -A server_command=(

	["sudarshan@127.0.0.1"]="free -m; neofetch; df -h; ipcalc 192.168.37.16"

	["hdoop@127.0.0.1"]="free -m; neofetch; df -h; ipcalc 192.168.37.16"

)

for server in "${!server_command[@]}"; do

	echo "$server is executing......."

	sleep 2

	ssh "$server" "${server_command[$server]}"

	if [ $? -eq 0 ]; then

		echo "$server is executing....."

	else

		echo "$server is not executing..."


	fi

done
