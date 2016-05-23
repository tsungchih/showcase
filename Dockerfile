FROM java:8-jdk-alpine

MAINTAINER gtclai "tsungchih.hd@gmail.com"

ENV AKKA_VERSION 2.4.3
ENV SCALA_VERSION 2.11

ADD http://downloads.typesafe.com/akka/akka_$SCALA_VERSION-$AKKA_VERSION.zip /opt
ENV CLASSPATH $CLASSPATH:/opt/akka-$AKKA_VERSION
COPY AkkaLogParsing.jar /usr/src/showcase/

ENTRYPOINT ["java", "-cp", "/usr/src/showcase/AkkaLogParsing.jar", "AkkaLogParsing.App", "10.5.20.205:9789", "syslogEvents", "10.5.20.204", "9042"]
