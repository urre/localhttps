#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;93m'
NC='\033[0m'

CWD="$(pwd)"

docker run -d \
		--name nginx-proxy \
		-p 80:80 \
		-p 443:443 \
		--restart always \
		-v /var/run/docker.sock:/tmp/docker.sock:ro \
		-v ${CWD}/certs:/etc/nginx/certs \
			jwilder/nginx-proxy

echo  -e ${GREEN}"Nginx proxy running! ${NC}";
