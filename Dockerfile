FROM    ubuntu:precise
MAINTAINER Andreas Jansson andreas@jansson.me.uk

RUN     echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN     apt-get -y update
RUN     apt-get -y install python-software-properties
RUN     apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
RUN     add-apt-repository 'deb http://mirror.jmu.edu/pub/mariadb/repo/5.5/ubuntu precise main'
RUN     apt-get -y update

RUN     apt-get -y install \
            galera

ADD     start.sh /usr/bin/start.sh
RUN     chmod +x /usr/bin/start.sh

EXPOSE  4567

CMD     /usr/bin/start.sh
