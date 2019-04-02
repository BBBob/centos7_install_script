#!/bin/sh
sudo wget https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz
sudo tar -xvf node-v8.12.0-linux-x64.tar.xz
sudo mv node-v8.12.0-linux-x64 nodejs
sudo ln -s $HOME/nodejs/bin/node /usr/local/bin/node  
sudo ln -s $HOME/nodejs/bin/npm /usr/local/bin/npm
