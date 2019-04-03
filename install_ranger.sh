#!/bin/sh
sudo yum install python-setuptools python-setuptools-devel -y
sudo easy_install pip
sudo pip install pylint
sudo pip install pytest
sudo pip install flake8
git clone https://github.com/ranger/ranger.git
cd ranger
make
sudo make install
cd ..
