FROM java:openjdk-8-jre-alpine

EXPOSE 8080

ARG GEOSERVER_VERSION=2.15.0
ARG GEOSERVER_URL=http://downloads.sourceforge.net/project/geoserver/GeoServer/${GEOSERVER_VERSION}/geoserver-${GEOSERVER_VERSION}-bin.zip

ENV JAVA_OPTS -Xms128m -Xmx512m -XX:MaxPermSize=512m
ENV ADMIN_PASSWD geoserver

RUN apk add --update --no-cache openssl

RUN wget -c ${GEOSERVER_URL} -O /tmp/geoserver-${GEOSERVER_VERSION}-bin.zip \
  && mkdir /opt \
  && unzip /tmp/geoserver-${GEOSERVER_VERSION}-bin.zip -d /opt \
  && cd /opt \
  && ln -s geoserver-${GEOSERVER_VERSION} geoserver \
  && rm /tmp/geoserver-${GEOSERVER_VERSION}-bin.zip

WORKDIR /opt/geoserver
CMD ["/opt/geoserver/bin/startup.sh"]