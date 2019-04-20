# sample-mapserver

# usage

```bash
docker-compose exec -u postgres db wget http://download.geofabrik.de/antarctica-latest.osm.pbf -P /tmp
```

```bash
docker-compose exec -u postgres db wget https://planet.openstreetmap.org/pbf/planet-latest.osm.pbf -P /tmp
```

```bash
docker-compose exec -u postgres db osm2pgsql -c -d gis --slim /tmp/antarctica-latest.osm.pbf
```

- adminer: http://localhost:8010
- geoserver: http://localhost:8011/geoserver

# license

MIT

# reference

- open street map
  - http://download.geofabrik.de/
- postgis
  - https://postgis.net/docs/postgis_installation.html#install_short_version
  - https://hub.docker.com/r/mdillon/postgis/
  - http://blog.godo-tys.jp/2013/06/13/2277/
