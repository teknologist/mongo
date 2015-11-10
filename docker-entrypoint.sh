#!/bin/bash
set -xe

export DBDIR=/data/db/$HOSTNAME
mkdir -p $DBDIR


exec $@ --oplogSize 512 --smallfiles --noprealloc --replSet rs0 --dbpath $DBDIR