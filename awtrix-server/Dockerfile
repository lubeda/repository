ARG BUILD_FROM=hassioaddons/base:5.0.3

FROM ${BUILD_FROM}

#ENV LANG C.UTF-8

WORKDIR /data

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache openjdk8-jre wget
# RUN mkdir /opt
#ADD https://blueforcer.de/awtrix/nightly/awtrix.jar /

COPY rootfs /

#ADD run.sh /
ADD datastore /
ADD https://blueforcer.de/awtrix/beta/awtrix.jar /beta.jar
ADD https://blueforcer.de/awtrix/nightly/awtrix.jar /nightly.jar
ADD https://blueforcer.de/downloads/awtrix.jar /stable.jar

#RUN chmod a+x /run.sh

EXPOSE 7000
EXPOSE 7001

#ENTRYPOINT [ "bash","/run.sh" ]
