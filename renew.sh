#!/bin/bash

docker run --rm --name certbot \
            -v "$(pwd)"/letsencrypt:/etc/letsencrypt \
            certbot/certbot renew

docker-compose restart