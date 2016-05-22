FROM centos:latest

MAINTAINER gtclai "tsungchih.hd@gmail.com"

ENV JDK_VERSION 7u79
ENV JDK_BUILD_VERSION b15
ENV AKKA_VERSION 2.3.15
ENV SCALA_VERSION 2.10

RUN yum update -y; yum install -y curl unzip; yum clean all

RUN curl -LO "http://download.oracle.com/otn-pub/java/jdk/$JDK_VERSION-$JDK_BUILD_VERSION/jdk-$JDK_VERSION-linux-x64.rpm" -H 'Cookie: oraclelicense=accept-securebackup-cookie' && rpm -i jdk-$JDK_VERSION-linux-x64.rpm; rm -f jdk-$JDK_VERSION-linux-x64.rpm; yum clean all
ENV JAVA_HOME /usr/java/default

#RUN curl -LO "http://downloads.typesafe.com/akka/akka_$SCALA_VERSION-$AKKA_VERSION.zip"

RUN yum remove curl unzip; yum clean all
