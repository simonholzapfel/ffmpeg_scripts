#!/bin/sh
# $1: database password

docker run --name OracleXE -shm-size=1g -p 1521:1521 -e ORACLE_PWD="$1" -v oracle-vol:/u01/app/oracle/oradata:Z docker.pkg.github.com/simonholzapfel/scripts/oraclexe:11.2.0.2
