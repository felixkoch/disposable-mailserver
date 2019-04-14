#!/bin/bash

adduser --disabled-password --gecos "" --shell=/bin/false noreply
echo "noreply:newpassword" | chpasswd

service postfix start
service dovecot start
tail -f /dev/null