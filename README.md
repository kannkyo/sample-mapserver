# sample-mapserver

# usage

```bash
docker-compose exec -u postgres db wget http://download.geofabrik.de/antarctica-latest.osm.pbf -P /tmp
```

You can choose bellow areas.

africa 
antarctica
asia
australia-oceania
central-america
europe 
north-america
south-america

Or planet.

```bash
docker-compose exec -u postgres db wget https://planet.openstreetmap.org/pbf/planet-latest.osm.pbf -P /tmp
```

```bash
docker-compose exec -u postgres db osm2pgsql -c -d gis --slim /tmp/antarctica-latest.osm.pbf
```

- adminer: http://localhost:8010
- geoserver: http://localhost:8011/geoserver

# default setting

- postgis
  - user: postgres
  - password: postgres
- geoserver
  - user: admin
  - password: geoserver

# license

- this scripts: MIT
- geoserver: [Attribution 3.0 Unported (CC BY 3.0)](https://creativecommons.org/licenses/by/3.0/)
- open street map: [Open Data Commons Open Database License](https://www.openstreetmap.org/copyright/en)



# reference

- open street map
  - http://download.geofabrik.de/
- postgis
  - https://postgis.net/docs/postgis_installation.html#install_short_version
  - https://hub.docker.com/r/mdillon/postgis/
  - http://blog.godo-tys.jp/2013/06/13/2277/


# UbuntuGIS

deb http://us.archive.ubuntu.com/ubuntu/ bionic main universe multiverse
deb http://us.archive.ubuntu.com/ubuntu/ bionic-security main universe multiverse
deb http://us.archive.ubuntu.com/ubuntu/ bionic-updates main universe multiverse