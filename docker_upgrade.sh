#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd /your/path/docker-multi-site/

$COMPOSE pull && $DOCKER pull php:7.4-fpm-alpine && $COMPOSE up --build -d && $DOCKER image prune -f
