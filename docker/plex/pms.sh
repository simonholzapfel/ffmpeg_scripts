#!/bin/sh

#  Get a claim token at
#  https://www.plex.tv/claim

# "id 'whoami'" to get UID and GID, used for drive access rights

# Examples:
# 1 media drive: /mnt/drive
# 2 claim token: claim-...
# 3 UID: 1001
# 4 GID: 1001

sudo mkdir /plxData
sudo chmod 777 /plxData
sudo chmod 777 /plxData/*
mkdir /plxData/db
mkdir /plxData/transcode
docker run -d --name plex-ms --restart=always --network=host -e PLEX_CLAIM="$2" -e PLEX_UID="$3" -e PLEX_GID="$4" -v /plxData/db:/config -v /plxData/transcode:/transcode -v "$1":/data plexinc/pms-docker
