#!/usr/bin/env bash

SCRIPT_FOLDER=`dirname -- "$0"`/..;
cd $SCRIPT_FOLDER
. config.sh

tmpsqlfile=$(mktemp)

export DB_USER_READER
export DB_NAME
envsubst < base/privileges.sql > "${tmpsqlfile}" 

psql -h ${DB_HOST} -U ${DB_USER} -f $tmpsqlfile ${DB_NAME}

rm "$tmpsqlfile"
