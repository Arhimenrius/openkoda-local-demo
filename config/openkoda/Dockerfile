FROM alpine:3.18
WORKDIR /usr/src/openkoda

RUN apk add openjdk17-jdk maven
COPY openkoda .
RUN mvn -f openkoda/pom.xml clean install spring-boot:repackage -DskipTests
RUN chmod 755 scripts/*
