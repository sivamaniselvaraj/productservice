FROM openjdk:27-ea-slim

WORKDIR /app
COPY target/*.jar app.jar

EXPOSE 8084

ENTRYPOINT ["java","-jar","app.jar"]
