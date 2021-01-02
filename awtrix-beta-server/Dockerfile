ARG BUILD_FROM=hassioaddons/base:8.0.6
FROM $BUILD_FROM

WORKDIR /share

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache openjdk11-jre wget nginx

COPY rootfs /

ADD Settings /share/config
ADD https://blueforcer.de/awtrix/beta/awtrix.jar /awtrix.jar
#ADD https://blueforcer.de/awtrix/stable/awtrix.jar /awtrix.jar

EXPOSE 7000/tcp
EXPOSE 7001/tcp
EXPOSE 5568/udp

