#!/bin/bash

echo "Deploying container..."

docker stop flask-app || true
docker rm flask-app || true

docker run -d -p 5000:5000 --name flask-app prashantpawarpp/flask-devops-app:1.0