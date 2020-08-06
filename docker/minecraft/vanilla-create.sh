#!/bin/bash

# $1 is minecraft version
# $2 is network port (minecraft server default port is 25565)
# $3 is volume/server id

docker run -d -e EULA=TRUE -e VERSION=$1 -p $2:25565 -v minecraft$3:/data --name minecraft$3 itzg/minecraft-server
