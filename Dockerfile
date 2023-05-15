FROM amazoncorretto:11-alpine-jdk
MAINTAINER natalia
COPY target/Portfolio-BackEnd-0.0.1-SNAPSHOT.jar Portfolio-BackEnd-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/Portfolio-BackEnd-0.0.1-SNAPSHOT.jar"]
