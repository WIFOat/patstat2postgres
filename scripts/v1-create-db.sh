#!/usr/bin/env bash

SCRIPT_FOLDER=`dirname -- "$0"`/..;
cd $SCRIPT_FOLDER
. config.sh

tmpsqlfile=$(mktemp)

export DB_NAME
envsubst < base/create.sql > "${tmpsqlfile}" 

echo "psql -h ${DB_HOST} -U ${DB_USER} -f $tmpsqlfile postgres"
psql -h ${DB_HOST} -U ${DB_USER} -f $tmpsqlfile postgres

rm "$tmpsqlfile"