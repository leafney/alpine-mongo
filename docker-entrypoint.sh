#!/bin/sh
set -e

echo "***** Setting permisition *****"
chown -R mongodb:mongodb /data/*

echo "***** Checking mongod.conf ********"

if [ -f "/data/config/mongod.conf" ]; then
    echo "** Start by /data/config/mongod.conf **"
    exec gosu mongodb mongod --config /data/config/mongod.conf
else
    echo "** Start by default config **"
    exec gosu mongodb mongod
fi