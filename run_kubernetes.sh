#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="hamb/dmalinov"

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run --image=$dockerpath dmalinovproject --port=80
kubectl create deployment dmalinovproject --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/dmalinovproject 8000:80
