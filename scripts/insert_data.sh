#!/usr/bin/env bash
. config.sh

while IFS="" read -r line || [ -n "$line" ]
do
    tls_nr="${line:0:6}"
    name="${line:7}"

    echo "${tls_nr} (${name})"
    for file in "${ZIP_FILES_DIR}/${base_name}/*"
    do
       echo " - File: ${file}"
       echo "   - Unzipping ..."
       unzip -p "${file}" > "${TMP_FILE}"
       echo "   - Inserting ${file} ..."
       psql -h ${DB_HOST} -U ${DB_USER} -c "\COPY $line from '${TMP_FILE}' DELIMITER AS ',' CSV HEADER QUOTE AS '\"' " ${DB_NAME}
    done
done < ../versions/${PATSTAT_VERSION}/tables.txt
