#!/bin/bash

# $1 is minecraft version
# $2 is volume/server id (for scaling)

docker run -d -e EULA=TRUE -e VERSION=$1 -p 25565:25565 -v minecraft$2:/data --name minecraft$2 itzg/minecraft-server