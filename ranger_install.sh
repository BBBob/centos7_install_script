#!/bin/sh
git clone https://github.com/ranger/ranger.git
cd ranger
sudo easy_install pip
sudo pip install pylint
sudo pip install pytest
sudo pip install flake8
make
sudo make install

