ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

RUN apk add --no-cache openjdk8-jre wget
# RUN mkdir /opt

ADD run.sh /
ADD datastore /
ADD https://blueforcer.de/downloads/awtrix.jar /
RUN chmod a+x /run.sh

EXPOSE 7000
EXPOSE 7001
EXPOSE 7002

ENTRYPOINT [ "bash","/run.sh" ]