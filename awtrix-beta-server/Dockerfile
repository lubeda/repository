ARG BUILD_FROM=hassioaddons/base:8.0.6
FROM $BUILD_FROM

WORKDIR /data

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache openjdk11-jre wget nginx

COPY rootfs /

ADD https://blueforcer.de/awtrix/beta/awtrix.jar /beta.jar
ADD https://blueforcer.de/awtrix/stable/awtrix.jar /stable.jar

# Labels
LABEL \
    io.hass.name="Awtrix_host" \
    io.hass.description="Server for the awtrix-8x32 RGB display." \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION}

