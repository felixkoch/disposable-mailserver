FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install postfix dovecot-imapd

#CMD ["tail", "-fn", "0", "/var/log/mail.log"]
