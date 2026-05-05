# Docker Commands Log

This file contains a record of all Docker commands run during the class.

## Building Docker Image
```
docker build -t devops-docker-app ./app
```

## Running Docker Container
```
docker run -d -p 3000:3000 --name devops-app devops-docker-app
```

## Listing Running Containers
```
docker ps
```

Output:
CONTAINER ID   IMAGE               COMMAND                  CREATED         STATUS         PORTS                    NAMES
abc123def456   devops-docker-app   "docker-entrypoint.s…"   2 minutes ago   Up 2 minutes   0.0.0.0:3000->3000/tcp   devops-app

## Stopping and Removing Container
```
docker stop devops-app && docker rm devops-app
```

## Using Docker Compose
```
docker-compose up --build
```

## Other Commands Used
- `docker images`: List images
- `docker logs devops-app`: View container logs
- `docker exec -it devops-app /bin/bash`: Enter container shell