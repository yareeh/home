#!/usr/bin/env bash

df -h

# Stop all running containers
docker stop $(docker ps -aq)

docker system prune -a -f

docker builder prune -a -f

docker volume prune -f

docker network prune -f

df -h