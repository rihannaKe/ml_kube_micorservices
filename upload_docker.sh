#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=58910810/mymicroservices

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="58910810"
docker login
docker tag mymicroservices:v1 $DOCKER_ID_USER/mymicroservices:v1
docker push $DOCKER_ID_USER/mymicroservices:v1

# Step 3:
# Push image to a docker repository
docker push 58910810/mymicroservices:v1