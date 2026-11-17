# DevOps Practice App

NodeJS app that outputs "Server running on port 3000" to console, doesn't not require to be built.

## Run locally

to run locally use the following command in /src directory

```
npm run build
```

## Build and run docker image

to build and run the app in docker do the following:

build image:

```
docker build -t devops-practice:[version number] .
```

run the image:

```
docker run -p 3000:3000 --name [instance name] devops-practice:[version number]
```

## Github Secrets

**DOCKER_TOKEN** - Access token for dockerhub account

**DOCKER_USERNAME** - Username of the dockerhub account

**EC2_HOST** - IP of the EC2 instance

**EC2_USER** - username for the EC2 instance

**EC2_SSH_KEY_B64** - Access key for the EC2 instance, encoded in bash64 format

**AWS_ACCESS_KEY_ID** - Access key for AWS, used for terraform instance creation
