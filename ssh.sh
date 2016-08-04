#!/bin/bash

# Install openSSH server
apt-get update
apt-get install -yq --no-install-recommends openssh-server
apt-get clean
rm -rf /var/lib/apt/lists/*

# Setup client's public-key
mkdir -p ~/.ssh
# CLIENT_PUBKEY is set via resin.io env vars
echo $CLIENT_PUBKEY | tee -a ~/.ssh/authorized_keys

service ssh start
