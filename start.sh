#!/bin/bash

if [ -n "$USER" ] && [ -n "$PASSWORD" ]; then
    adduser --disabled-password --gecos "" --shell=/bin/false $USER
    echo "$USER:$PASSWORD" | chpasswd
fi

if [ -n "$MAILNAME" ]; then
    echo $MAILNAME > /etc/mailname;
    postconf -e myhostname=$MAILNAME
fi

service rsyslog start
service postfix start
service dovecot start
tail -f /dev/null