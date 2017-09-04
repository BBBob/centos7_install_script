#!/bin/sh
sudo yum install git
sudo yum install wget
sudo yum install htop
sudo yum install neovim
wget https://github.com/BBBob/oh-my-zsh/raw/master/tools/install.sh -O - | sh
sudo easy_install pip
sudo pip install pylint
sudo pip install pytest
sudo pip install flake8
sudo pip install shadowsocks
