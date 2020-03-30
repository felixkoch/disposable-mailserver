#!/bin/bash
DIRECTORY="${0%/*}"

docker run --rm --name certbot \
            -v $DIRECTORY/letsencrypt:/etc/letsencrypt \
            -p 80:80 \
            certbot/certbot renew

/usr/local/bin/docker-compose -f $DIRECTORY/docker-compose.yml restart