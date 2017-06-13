#!/bin/sh

# Create data folder in current working directory if it does not exist
if [ ! -d data ]
then
    echo "Create directory data"
    mkdir -p data
fi

# Pull images for composed multi-container application
docker-compose pull

# Run application
docker-compose up
