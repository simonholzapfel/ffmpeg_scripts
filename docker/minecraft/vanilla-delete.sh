#!/bin/bash

# $1 is id of minecraft server

docker rm -f minecraft$1
docker volume rm minecraft$1
