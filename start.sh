#!/bin/bash
HOSTNAME="$(hostname -f)"

if [ -n "$USER" ] && [ -n "$PASSWORD" ]; then
    adduser --disabled-password --gecos "" --shell=/bin/false $USER
    echo "$USER:$PASSWORD" | chpasswd
fi

if [ -n "$MAILNAME" ]; then
    echo $MAILNAME > /etc/mailname;
fi


postconf -e myhostname=$HOSTNAME

service postfix start
service dovecot start
tail -f /dev/null