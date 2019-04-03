#!/bin/sh
sudo pip install -I requests==2.9
sudo pip install docker-compose
curl -fsSL get.docker.com -o get-docker.sh
sudo chmod +x get-docker.sh
sudo ./get-docker.sh

