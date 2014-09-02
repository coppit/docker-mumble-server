#!/bin/bash

if [ ! -f /data/mumble-server.ini ]
then
  sed -i 's/var.log.mumble-server/data/' /etc/mumble-server.ini
  sed -i 's/var.lib.mumble-server/data/' /etc/mumble-server.ini
  cp /etc/mumble-server.ini /data
  chmod a+rw /data/mumble-server.ini
  echo Created /data/mumble-server.ini. Exiting.
  exit 1
fi

echo Starting mumble-server service
sed -i 's/^INIFILE=.*/INIFILE=\/data\/mumble-server.ini/' /etc/init.d/mumble-server
service mumble-server start

while true
do
  sleep 3600
done
