FROM amazoncorretto:8-alpine-jdk
MAINTAINER natalia
COPY target/Portfolio-BackEnd-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
