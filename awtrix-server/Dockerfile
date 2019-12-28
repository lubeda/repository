ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8
WORKDIR /data
RUN apk add --no-cache openjdk8-jre wget
# RUN mkdir /opt
#ADD https://blueforcer.de/awtrix/nightly/awtrix.jar /

ADD run.sh /
ADD datastore /
ADD https://blueforcer.de/awtrix/beta/awtrix.jar /
RUN chmod a+x /run.sh

EXPOSE 7000
EXPOSE 7001

ENTRYPOINT [ "bash","/run.sh" ]