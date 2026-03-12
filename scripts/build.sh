#!/bin/bash

echo "Building Docker image..."

docker build -t prashantpawarpp/flask-devops-app:1.0 .

docker push prashantpawarpp/flask-devops-app:1.0

echo "Image pushed to Docker Hub"