#!/bin/bash

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;93m'
NC='\033[0m'

# Start docker-compose
docker-compose up -d
echo  -e ${GREEN}"Docker compose running ${NC}";

# Run nginx-proxy letting the local domain work with https
./run-nginx-proxy.sh
echo  -e ${GREEN}"Open https://nicedomain.local in your browser! ${NC}";
