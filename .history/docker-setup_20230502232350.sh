#!/bin/bash

# Step 1: Bring down the docker containers and remove volumes
docker compose down --volumes

# Step 2: Remove the image with the specified name
docker image prune -a y

# Step 3: Start the containers in detached mode
docker compose up -d

# Finished
echo "Docker setup completed."
