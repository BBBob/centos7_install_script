#!/bin/sh
sudo -E pip install -I requests==2.9
sudo -E pip install docker-compose
curl -fsSL get.docker.com -o get-docker.sh
sudo -E chmod +x get-docker.sh
sudo -E ./get-docker.sh

