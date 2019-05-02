# Disposable Mailserver

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/felixfkoch/disposable-mailserver.svg)](https://hub.docker.com/r/felixfkoch/disposable-mailserver)

Optional Environment variables:
- MAILNAME: Origin- and Destination-Domain and Hostname, e.g. example.com
- USER: local part of email address, e.g. noreply (in case of noreply@example.com)
- PASSWORD: SMTP & IMAP password for USER

You may overwrite the default cert and key files for postfix and dovecot by overwriting both files with bind mounts:
/etc/ssl/certs/ssl-cert-snakeoil.pem
/etc/ssl/private/ssl-cert-snakeoil.key