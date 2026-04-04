# Product Service

## API
GET 

## Description
product management service

## API
GET /heartbeat

## Description
checks the heartbeat of the service


## Run
mvn clean package
docker build -t product-service .
docker run -p 8084:8084 product-service
