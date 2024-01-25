#!/bin/bash

# Build Docker image untuk frontend
docker build -t fandi23/order-service:latest .

# Login ke Docker Hub
docker login -u fandi23 -p andhy060402

# Push image ke Docker Hub
docker push fandi23/order-service:latest
