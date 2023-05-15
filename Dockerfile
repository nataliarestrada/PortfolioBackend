FROM amazoncorretto:8
EXPOSE 8080
MAINTAINER natalia
COPY target/Portfolio-BackEnd-0.0.1-SNAPSHOT.jar Portfolio-BackEnd-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/Portfolio-BackEnd-0.0.1-SNAPSHOT.jar"]
