ARG BUILD_FROM
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

RUN apk add --no-cache openjdk8-jre wget 

WORKDIR /data
RUN wget https://blueforcer.de/downloads/awtrix.jar

COPY run.sh /data
RUN chmod a+x /data/run.sh

CMD ["/data/run.sh"]
