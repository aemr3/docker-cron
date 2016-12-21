FROM ubuntu
MAINTAINER Emre <e@emre.pm>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q -q && apt-get install cron mysql-client curl php-cli php-curl php-mysql php-soap php-redis vim --yes --force-yes

RUN apt-get clean && rm -rf /tmp/* /var/tmp/* && rm -rf /var/lib/apt/lists/*

RUN rm -rf /etc/cron.daily/* /etc/cron.hourly/* /etc/cron.monthly/* /etc/cron.weekly/*

ENTRYPOINT ["/usr/sbin/cron", "-f"]
