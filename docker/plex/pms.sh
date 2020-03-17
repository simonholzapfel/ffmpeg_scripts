#!/bin/sh

sudo rm -rf /plxData
sudo mkdir /plxData
sudo chmod 777 /plxData
mkdir /plxData/db
mkdir /plxData/transcode
docker run -d --name plex-ms --network=host -e TZ="MEZ" -e  PLEX_CLAIM="$2" -v /plxData/db:/config -v /plxData/transcode:/transcode -v "$1":/data plexinc/pms-docker
