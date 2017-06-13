# Yadage As A Web Service

This repository contains the configuration files to run the Yadage Web Service as a composed multi-container application.

## Run

Execute ```run.sh``` to run the application. The script requires [Docker Compose](https://docs.docker.com/compose/) to pull relevant Docker containers and run the application. A folder ```data``` will be created in the working directory if it doesn't exist.

```
# Create data folder in current working directory if it does not exist
if [ ! -d $1 ]
then
    echo "Create directory" $1
    mkdir -p $1
fi

# Pull images for composed multi-container application
docker-compose pull

# Run application
docker-compose up
```
After running ```run.sh``` to Yadage Web User Interface is accessible at (http://localhost:8088).

![Screen Shot](https://raw.githubusercontent.com/heikomuller/yadage-as-a-web-service/master/images/yadage-screenshot.png)
