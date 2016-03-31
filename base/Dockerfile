FROM ubuntu:14.04

MAINTAINER vladimir@drizheruk.com.ua
LABEL "role"="base"

COPY bin /opt/bin

RUN chmod a+x /opt/bin/build.sh && sleep 1 && /opt/bin/build.sh && sleep 1 && rm -rf /opt/bin
