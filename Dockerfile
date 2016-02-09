FROM phusion/baseimage:0.9.18
CMD ["/sbin/my_init"]

RUN apt-get -qq update
RUN apt-get -y install fortunes cowsay
RUN mkdir /etc/service/cowfortune
ADD cowfortune.sh /etc/service/cowfortune/run
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
