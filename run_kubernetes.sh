#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<your docker ID/path>
dockerpath=gitedward/udaproj4

# Step 2
# Run the Docker Hub container with kubernetes
echo "Docker ID and Image: $dockerpath"
docker login
kubectl run udaproj4\
    --image=$dockerpath\
    --port=80 --labels app=udaproj4


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udaproj4 8000:80

