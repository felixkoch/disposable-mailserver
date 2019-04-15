#!/bin/bash
HOSTNAME="$(hostname -f)"

if [ -n "$USER" ] && [ -n "$PASSWORD" ]; then
    adduser --disabled-password --gecos "" --shell=/bin/false $USER
    echo "$USER:$PASSWORD" | chpasswd
fi

if [ -n "$MAILNAME" ]; then
    echo $MAILNAME > /etc/mailname;
fi

if [ -n "$HOSTNAME" ]; then
    postconf -e myhostname=$HOSTNAME
fi

service postfix start
service dovecot start
tail -f /dev/null