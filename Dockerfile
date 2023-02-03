FROM openjdk:11 as mongoDbDemo
LABEL maintainer="darvin"
ADD target/crud-mongodb-docker-0.0.1-SNAPSHOT.jar crud-mongodb-docker.jar
ENTRYPOINT ["java","-jar","/crud-mongodb-docker.jar"]
EXPOSE 8081