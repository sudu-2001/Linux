#!/bin/bash


container=$(docker ps -f "status=exited" -q)


if [ -n "$container" ]; then

    docker rm $container


    if [ $? -eq 0 ]; then
        echo "Success: The following container IDs were removed:"
        echo "$container"
    else
        echo "Error: Failed to remove some or all containers."
    fi
else
    echo "No exited containers were found."
fi
