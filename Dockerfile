FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install postfix

CMD ["tail", "-fn", "0", "/var/log/mail.log"]
