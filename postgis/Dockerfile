FROM postgres:11

## REFERENCE
# author: Appropriate Computing, LLC
# license: MIT
# url: https://github.com/appropriate/docker-postgis/blob/master/11-2.5/initdb-postgis.sh

ENV POSTGIS_MAJOR 2.5
ENV POSTGIS_VERSION 2.5.2+dfsg-1~exp1.pgdg90+1

RUN apt-get update \
  && apt-cache showpkg postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR \
  && apt-get install -y --no-install-recommends \
  postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION \
  postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION \
  postgis=$POSTGIS_VERSION \
  wget \
  osm2pgsql \
  && rm -rf /var/lib/apt/lists/*

COPY scripts /scripts
COPY ./docker-entrypoint-initdb.d/postgis.sh /docker-entrypoint-initdb.d/postgis.sh