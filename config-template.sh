if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  echo "This script is intended to be sourced, not executed directly."
  exit 1
fi

PATSTAT_VERSION=2023b

# get long version name 
if [ "${PATSTAT_VERSION:4:1}" == "a" ]
then
    PATSTAT_VERSION_LONG="Autumn"
else
    PATSTAT_VERSION_LONG="Spring"
fi
PATSTAT_VERSION_LONG="${PATSTAT_VERSION_LONG} ${PATSTAT_VERSION:0:4}"


# DB SETTINGS
DB_HOST=localhost
DB_NAME=patstat${PATSTAT_VERSION}
DB_USER=patstat_admin
DB_USER_READER=patstat_reader
DB_USER_READER_PASS=secret
# PASSWORD https://www.postgresql.org/docs/current/libpq-pgpass.html


# FILE/FOLDERS
PATSTAT_ZIP_DIR=/directory/with/patstat/zips