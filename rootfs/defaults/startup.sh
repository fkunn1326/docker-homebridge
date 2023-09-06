#!/bin/bash

#
# Docker Homebridge Custom Startup Script - homebridge/homebridge
#
# This script can be used to customise the environment and will be executed as
# the root user each time the container starts.
#
# Example installing packages:
#
# apt-get update
# apt-get install -y python3
#

apt-get update
apt-get install -y curl

curl -fsSL https://tailscale.com/install.sh | sh

tailscaled --tun=userspace-networking --socks5-server=localhost:1055 &

tailscale up
