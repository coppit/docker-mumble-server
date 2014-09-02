docker-mumble-server
====================

This is a Docker container for running [Murmur](http://wiki.mumble.info/wiki/Main_Page), the server for the Mumble voice-over-ip client.

Usage
-----

This docker image is available as a [trusted build on the docker index](https://registry.hub.docker.com/u/coppit/mumble-server/).

To initialize the server configuration, run this:

`docker run --name=mumble-server -d --net=host -v /path/to/config/mumble-server:/data -t coppit/mumble-server`

The container will create a config file in /path/to/config/mumble-server. Edit the file, setting the server password and any welcome message.

Then start the container again and it will launch the server on port 64738:

`docker start mumble-server`

The log file will be created in /path/to/config/mumble-server/mumble-server.log, and the sqlite DB will be created in that directory as well.
