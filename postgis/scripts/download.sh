#!/bin/sh

set -e

## area size
# Africa	(2.9 GB)
# Antarctica	(29.0 MB)
# Asia	(6.8 GB)
# Australia and Oceania	(640 MB)
# Central America	(345 MB)
# Europe	(19.5 GB)
# North America	(8.3 GB)
# South America	(1.5 GB)

area=$1

if [ $area = "planet" ]; then
  wget https://planet.openstreetmap.org/pbf/planet-latest.osm.pbf -P .
else 
  wget http://download.geofabrik.de/$area-latest.osm.pbf -P .
  # for area in africa antarctica asia australia-oceania central-america europe north-america south-america
  # do
  #   wget http://download.geofabrik.de/$area-latest.osm.pbf -P .
  # done
fi