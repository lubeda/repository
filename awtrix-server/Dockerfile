ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

RUN apk add --no-cache openjdk8-jre wget 

WORKDIR /
RUN wget -O awtrix.jar https://blueforcer.de/downloads/awtrix.jar 

COPY run.sh /
RUN chmod a+x /run.sh

CMD ["/run.sh"]
