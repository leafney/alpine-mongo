#!/bin/sh
set -e

echo "***** Checking mongod.conf ********"

if [ -f "/data/config/mongod.conf" ]; then
    echo "** Start by mongod.conf **"
    mongod --config /data/config/mongod.conf
else
    echo "** Start by default **"
    mongod
fi