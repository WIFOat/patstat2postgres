## PATSTAT to Postgres 

> **Warning**
> Work in progress

Postgres import scripts for the [PATSTAT database](https://www.epo.org/searching-for-patents/business/patstat.html).

This repository is based on <https://github.com/altay-oz/load_patstat>.


### how-to

Copy `config-template.sh` to `config.sh` and adjust it to your needs.

Run the scripts under `scripts` folders.

#### scipts

base:
- `b1-create-user-reader.sh`
- `b2-grant-user-reader.sh`

version:
- `v1-create-db.sh`
- `v2-create-tables.sh`

    Creates tables using file `versions/{PATSTAT_VERSION}/create_tables.sql`

- `v3-insert-data.sh`

    Inserts data to tables (only for tables listed in `versions/{PATSTAT_VERSION}/tables.txt`)

- `v4-add-indices.sh`
- `v4-add-keys.sh`
- `v4-get-row-counts.sh`

    Counts rows (only for tables listed in `versions/{PATSTAT_VERSION}/tables.txt`)

### promising patstat postgres repos:

- https://github.com/max-planck-innovation-competition/go-patstat
- https://github.com/Ianvdl/patstat-to-postgresql
