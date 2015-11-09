#!/bin/bash
set -e

export DBDIR=/data/db/$HOSTNAME
mkdir -p $DBDIR

echo -n "Made DBDIR: "
echo $DBDIR

exec $@ --oplogSize 512 --smallfiles --noprealloc --replSet rs0 --dbpath $DBDIR