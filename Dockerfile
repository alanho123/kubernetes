# Docker file for the Eureka Server
#
# Version 0.0.1

#jdk image
FROM openjdk:8-jre-alpine

# install

# label for the image
LABEL Description="Demo Service" Version="0.0.1"

# the version of the archive
ARG VERSION=0.0.1

# mount the temp volume
VOLUME /tmp

# Add the service as app.jar
ADD project/demo/target/demo-${VERSION}.jar app.jar

# touch the archive for timestamp
RUN sh -c 'touch /app.jar'

EXPOSE 8761

# entrypoint to the image on run
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
