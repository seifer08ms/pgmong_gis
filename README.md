# pgmong_gis
This is a simple demo of using GeoServer to publish spatial data from PostGIS and MongoDB.

## Motivation

Suppose we had a large amount of purchasing data in MongoDB, the corresponding coordinates in PostGIS. We want to join them together and publish a map layer in GeoServer.

The demo focuses on the performance of publish [mongo_fdw](https://github.com/EnterpriseDB/mongo_fdw.git) spatial view in [GeoServer](http://geoserver.org/).

## Installation
```
git clone https://github.com/seifer08ms/pgmong_gis.git
cd pgmong_gis
docker-compose up -d 
```


