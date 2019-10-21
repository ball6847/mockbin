Docker Image for Mockbin
=======================

Simple docker image with mockbin installed

## Installation

Using `docker run`

```sh
docker run -d --name mockbin_redis redis
docker run -d -p 8080:8080 --link mockbin_redis:redis ball6847/mockbin
```

Using `docker-compose`

docker-compose.yml

```yml
version: '3'

services:
  mockbin:
    image: ball6847/mockbin:latest
    depends_on:
      - redis
    ports:
      - 8080:8080
    command: mockbin -r redis://redis:6379
  redis:
    image: redis:3-alpine
    entrypoint: redis-server --appendonly yes --protected-mode no

```

Then `docker-compose up -d` should bring up all services and mockbin will be available on `8080` port
