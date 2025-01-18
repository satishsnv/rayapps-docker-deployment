# rayapps-docker-deployment

This repo provides a simple example about deploying multiple ray applications using docker compose

# This repo contains the following artifacts. 

- couple of ml applications text summarizer and translator that exposes end points for performing summarizing and translation (which are taken from ray documentation)

- docker file with common dependencies and to dockerize the applications

- config file used for running the applications

- docker-compose.yaml that creates a ray cluster with one head and  oneworker node(this can be scaled based on requirement and number of applications)

- client.py to test the service end points

# steps to run the docker compose

- docker and docker compose are pre-requisites to run this example

- checkout the code and go to the root directory

- create the docker image by running the following command ***docker buildx build -t ml-apps:latest .***

- once the docker image is built run the following command ***docker compose up***

- once the service is up one can access the dashboard @ http://localhost:8201

- once the deployment is ready(one can see the status in dashboard), services can be tested by running client.py or using any http client or postman