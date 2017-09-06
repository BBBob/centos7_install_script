#!/bin/sh
# zsh start
sudo yum install neovim
sudo yum install zsh
wget https://github.com/BBBob/oh-my-zsh/raw/master/tools/install.sh -O - | sh
# zsh end

# tools start
sudo yum install wget
sudo yum install htop
# tools end

# ranger start
sudo yum install python-setuptools python-setuptools-devel
sudo easy_install pip
sudo pip install pylint
sudo pip install pytest
sudo pip install flake8
git clone https://github.com/ranger/ranger.git
cd ranger
make
sudo make install
cd ..
# ranger end

# shadowsocks start
sudo pip install shadowsocks
./shadowsocks_install.sh
# shadowsocks end


