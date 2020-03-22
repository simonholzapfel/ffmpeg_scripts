#!/bin/bash

# $1 is minecraft version

sudo mkdir /minecraft
sudo chmod 777 /minecraft
docker run -d -it -e EULA=TRUE -e VERSION=$1 -p 25565:25565 -v /minecraft:/data --name mc itzg/minecraft-server
