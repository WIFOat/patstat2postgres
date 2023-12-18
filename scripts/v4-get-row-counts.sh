#!/usr/bin/env bash

SCRIPT_FOLDER=`dirname -- "$0"`/..;
cd $SCRIPT_FOLDER
. config.sh

while IFS="" read -r line || [ -n "$line" ]
do
    tls_nr="${line:0:6}"
    name="${line:7}"
    base="${line}\t${name}\t${tls_nr}\t"

    echo -ne "${base}\t ..."
    count=`psql -h ${DB_HOST} -U ${DB_USER} -t -c "SELECT count(*) FROM ${line}" ${DB_NAME}`
    echo -ne "\r"
    echo -e "${base}\t${count}"

done < versions/${PATSTAT_VERSION}/tables.txt
