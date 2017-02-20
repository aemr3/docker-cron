FROM ubuntu:14.04.3
MAINTAINER Emre <e@emre.pm>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q -q && apt-get install mysql-client curl php5-cli php5-curl php5-mysql vim --yes --force-yes

RUN apt-get clean && rm -rf /tmp/* /var/tmp/* && rm -rf /var/lib/apt/lists/*

RUN rm -rf /etc/cron.daily/* /etc/cron.hourly/* /etc/cron.monthly/* /etc/cron.weekly/*

ENTRYPOINT ["/usr/sbin/cron", "-f"]
