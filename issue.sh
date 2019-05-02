#!/bin/bash

if [ -z "$1" ]
  then
    echo "Please enter domain"
    exit 1
fi
domain=$1
echo $domain

docker run --rm --name certbot -v "$(pwd)"/letsencrypt:/etc/letsencrypt -p 80:80 certbot/certbot certonly --register-unsafely-without-email --agree-tos --standalone -d $domain