# Docker file for the test
#
# Version 0.0.2

#jdk image
FROM openjdk:8-jre-alpine

# install

# label for the image
LABEL Description="Demo Service" Version="0.0.2"

# the version of the archive
ARG VERSION=0.0.2

# mount the temp volume
VOLUME /tmp

# Add the service as app.jar
ADD target/demo-${VERSION}.jar app.jar

# touch the archive for timestamp
RUN sh -c 'touch /app.jar'

EXPOSE 8080

# entrypoint to the image on run
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
