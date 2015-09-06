FROM ubuntu

MAINTAINER Emre <e@emre.pm>

RUN apt-get update -q -q && DEBIAN_FRONTEND=noninteractive apt-get install mysql-client curl --yes --force-yes

RUN apt-get clean && rm -rf /tmp/* /var/tmp/* && rm -rf /var/lib/apt/lists/*

RUN rm -rf /etc/cron.daily/* /etc/cron.hourly/* /etc/cron.monthly/* /etc/cron.weekly/*

CMD /usr/sbin/cron -f
