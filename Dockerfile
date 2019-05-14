FROM openjdk:8

MAINTAINER chpengzh<chpengzh@foxmail.com>

WORKDIR /root

ADD registry-integration.tgz /root

VOLUME /root/conf /root/bin

EXPOSE 9615 9622 9603

CMD /root/bin/startup.sh && tail -f /root/logs/registry-integration-std.out

