#!/bin/sh

#  Get a claim token at
#  https://www.plex.tv/claim

# Argument Examples:
# $1 media drive: /mnt/drive
# $2 claim token: claim-...

docker run -d --name plex-ms \
 --network=host \
 -e PLEX_CLAIM="$2" \
 -v plex_db:/config -v plex_transcode:/transcode -v "$1":/data \
 plexinc/pms-docker
