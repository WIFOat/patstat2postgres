#!/usr/bin/env bash

SCRIPT_FOLDER=`dirname -- "$0"`/..;
cd $SCRIPT_FOLDER
. config.sh

tmpfile=$(mktemp)

while IFS="" read -r line || [ -n "$line" ]
do    
    tls_nr="${line:0:6}"
    name="${line:7}"

    echo "Inflating ${name} (${tls_nr})"

    for file in "${PATSTAT_ZIP_DIR}/${tls_nr}"*
    do
       echo " - File: ${file}"
       echo "   - Unzipping ..."
       unzip -p "${file}" > "${tmpfile}"
       echo "   - Inserting ${file} ..."
       psql -h ${DB_HOST} -U ${DB_USER} -c "\COPY $line from '${tmpfile}' DELIMITER AS ',' CSV HEADER QUOTE AS '\"' " ${DB_NAME}
    done
done < versions/${PATSTAT_VERSION}/tables.txt

rm "$tmpfile"