#!/bin/bash

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;93m'
NC='\033[0m'

# Create cert
./create-cert.sh

# Trust cert in macOS Keychain
./trust-cert.sh

# Setup nicedomain.local in /etc/hosts
./setup-hosts-file.sh
