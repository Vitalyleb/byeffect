FROM openjdk:17-oracle
LABEL authors="Lebed"

MAINTAINER vitaly

COPY target/byeffect-0.0.1-SNAPSHOT.jar byeffect.jar
ENTRYPOINT ["java","-jar","/byeffect.jar"]




