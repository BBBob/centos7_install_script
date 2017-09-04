#!/bin/sh
wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh
nvm install stable
npm install -g hexo-cli
