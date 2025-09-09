apt-get update
apt-get install libsqlite3-mod-spatialite
apt-get install gdal-bin
apt-get install build-essential
docker pull influxdb:1.11.8
docker run -d -p 8086:8086 influxdb:1.11.8