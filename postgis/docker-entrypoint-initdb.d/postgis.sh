#!/bin/sh

## REFERENCE
# author: Appropriate Computing, LLC
# license: MIT
# url: https://github.com/appropriate/docker-postgis/blob/master/11-2.5/initdb-postgis.sh

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Create the 'gis' template db
"${psql[@]}" <<- 'EOSQL'
CREATE DATABASE gis;
UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'gis';
EOSQL

# Load PostGIS into both template_database and $POSTGRES_DB
for DB in gis "$POSTGRES_DB"; do
	echo "Loading PostGIS extensions into $DB"
	"${psql[@]}" --dbname="$DB" <<-'EOSQL'
    CREATE EXTENSION IF NOT EXISTS hstore;
    CREATE EXTENSION IF NOT EXISTS postgis;
    CREATE EXTENSION IF NOT EXISTS postgis_topology;
    CREATE EXTENSION IF NOT EXISTS postgis_sfcgal;
    CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;
    CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder;
EOSQL
done
