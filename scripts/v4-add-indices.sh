#!/usr/bin/env bash

SCRIPT_FOLDER=`dirname -- "$0"`/..;
cd $SCRIPT_FOLDER
. config.sh

psql -h ${DB_HOST} -U ${DB_USER} -f versions/${PATSTAT_VERSION}/add_primary_keys.sql ${DB_NAME}
psql -h ${DB_HOST} -U ${DB_USER} -f versions/${PATSTAT_VERSION}/create_indices.sql ${DB_NAME}
