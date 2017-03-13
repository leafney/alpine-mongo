#!/bin/sh
set -e

echo "***** Setting permisition *****"
chown -R mongodb:mongodb /data/*

echo "***** Checking mongod.conf ********"

if [ -f "/data/config/mongod.conf" ]; then
    echo "** Start by mongod.conf **"
    exec gosu mongodb mongod --config /data/config/mongod.conf
else
    echo "** Start by default **"
    exec gosu mongodb mongod
fi