#!/bin/bash

sudo mkdir /minecraft
sudo chmod 777 /minecraft
docker run -d -it -e EULA=TRUE -p 25565:25565 -v /minecraft:/data --name mc itzg/minecraft-server
