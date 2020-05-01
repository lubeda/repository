ARG BUILD_FROM=hassioaddons/base:7.2.0

FROM ${BUILD_FROM}

WORKDIR /data

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache openjdk8-jre wget

COPY rootfs /

ADD datastore /
ADD https://blueforcer.de/awtrix/beta/awtrix.jar /awtrix.jar
#ADD https://blueforcer.de/awtrix/stable/awtrix.jar /awtrix.jar

EXPOSE 7000
EXPOSE 7001

CMD ["bashio" , "/run.sh"]

