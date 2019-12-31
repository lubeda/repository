ARG BUILD_FROM=hassioaddons/base:5.0.3

FROM ${BUILD_FROM}

WORKDIR /data

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache openjdk8-jre wget

COPY rootfs /

ADD datastore /
ADD https://blueforcer.de/awtrix/beta/awtrix.jar /beta.jar
ADD https://blueforcer.de/awtrix/nightly/awtrix.jar /nightly.jar
ADD https://blueforcer.de/downloads/awtrix.jar /stable.jar

EXPOSE 7000
EXPOSE 7001

