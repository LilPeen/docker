#!/bin/bash

# Step 1: Bring down the docker containers and remove volumes
docker compose down 

# Step 2: Remove the image with the specified name
yes | docker image prune -a

# Step 3: Start the containers in detached mode
docker compose up -d

# Finished
echo "Docker setup completed."
