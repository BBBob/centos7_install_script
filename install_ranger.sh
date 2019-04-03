#!/bin/sh
sudo -E yum install python-setuptools python-setuptools-devel -y
sudo -E easy_install pip
sudo -E pip install pylint
sudo -E pip install pytest
sudo -E pip install flake8
git clone https://github.com/ranger/ranger.git
cd ranger
make
sudo -E make install
cd ..
