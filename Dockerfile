FROM phusion/baseimage:0.9.11

MAINTAINER David Coppit <david@coppit.org>

RUN apt-get update
RUN apt-get install -y mumble-server

# Add the start script
ADD start.sh /tmp/start.sh
RUN chmod 755 /tmp/start.sh

VOLUME ["/data"]

EXPOSE 64738

CMD ["/tmp/start.sh"]
