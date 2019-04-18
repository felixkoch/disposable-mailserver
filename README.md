# Disposable Mailserver

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/felixfkoch/disposable-mailserver.svg)
![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/felixfkoch/disposable-mailserver.svg)

Optional Environment variables:
- MAILNAME: Origin- and Destination-Domain, e.g. example.com
- USER: local part of email address, e.g. noreply (in case of noreply@example.com)
- PASSWORD: SMTP & IMAP password for USER