#!/bin/sh
# zsh start
sudo yum install neovim -y
sudo yum install zsh -y
wget https://github.com/BBBob/oh-my-zsh/raw/master/tools/install.sh -O - | sh
# zsh end

# tools start
sudo yum install wget -y
sudo yum install htop -y
sudo yum install aria2.x86_64  -y
sudo cp aria2start /usr/bin/
mkdir -p $HOME/.config/aria2
sudo cp aria2.conf $HOME/.config/aria2/
# tools end

# ranger start
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
# ranger end

# shadowsocks start
sudo pip install shadowsocks
sudo ./shadowsocks_install.sh
# shadowsocks end

# virt-what start
sudo yum install virt-what -y
# virt-what end

# bbr start
wget --no-check-certificate https://raw.githubusercontent.com/kuoruan/shell-scripts/master/ovz-bbr/ovz-bbr-installer.sh
sudo chmod +x ovz-bbr-installer.sh
sudo ./ovz-bbr-installer.sh
# bbr end

# nginx start
sudo yum install nginx -y
# nginx end

# https ssl start
sudo yum install certbot-nginx -y
sudo certbot --nginx
# https ssl  end

