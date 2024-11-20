#Use an offical Tomcat image as a base image
FROM tomcat:9.0.14-jre8-alpine

LABEL maintainer="github.com/armaanmahajan"

#Remove default Tomcat application

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

#COPY your web application to the Tomcat webapps directory

COPY webapp/ /usr/local/tomcat/webapps/ROOT/

#change the default shell to bash

RUN ln -sf /bin/bash /bin/sh 

#Expose the default Tomcat port 

EXPOSE 8080

#START TOMCAT when the container starts 

CMD ["catalina.sh", "run"]