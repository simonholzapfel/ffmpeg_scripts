#!/bin/bash

# 1: is the path to the data directory

docker run -d -it -e EULA=TRUE -p 25565:25565 -v "$1":/data --name mc itzg/minecraft-server