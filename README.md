# learn_docker
Docker tutorial

### Install Docker on Mac OS

 - https://download.docker.com/mac/stable/Docker.dmg

### Terminology

- image (base image)
- container (container status)
- network
- build
- Dockerfile

### Basic docker commands

Show all containers:
  - `docker ps -a` 

Show running containers:  
  - `docker ps `
  
Show all images:
  - `docker images`

Stop a docker container:
  - `docker stop <container-id>`
  
Build a docker image from a Dockerfile:
  - `docker build . -t <image-name>:<image-tag>`
  
See container logs:
  - `docker logs <container-id>`
  
See container information:
  - `docker inspect <container-id>`
  
Log in interactively into a running container:
  - `docker exec -it <container-id> /bin/bash`
  
Run a container in detach mode:
  - `docker run -d <image-name>:<image-tag>`
