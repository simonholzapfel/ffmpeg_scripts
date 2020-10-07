#!/bin/sh

# $1 media drive: /mnt/ironwolf/Media

docker stop plex-ms
docker rm plex-ms
docker pull plexinc/pms-docker
docker run -d --name plex-ms \
--network=host \
-v plex_db:/config -v plex_transcode:/transcode -v "$1":/data \
plexinc/pms-docker
