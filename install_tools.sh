#!/bin/sh

sudo yum remove epel-release.noarch -y
sudo rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
sudo yum clean all
sudo yum update -y
sudo yum install unzip -y

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
sudo cp config/aria2.conf $HOME/.config/aria2/
# tools end

# ranger start
sudo ./install_ranger.sh
# ranger end

# shadowsocks start
sudo pip install shadowsocks
sudo ./shadowsocks_install.sh
# shadowsocks end

# virt-what start
sudo yum install virt-what -y
# virt-what end

# bbr start
#wget --no-check-certificate https://raw.githubusercontent.com/kuoruan/shell-scripts/master/ovz-bbr/ovz-bbr-installer.sh
#sudo chmod +x ovz-bbr-installer.sh
#sudo ./ovz-bbr-installer.sh
# bbr end

# nginx start
sudo yum install nginx -y
# nginx end

# https ssl start
sudo yum install certbot-nginx -y
sudo certbot --nginx
# https ssl  end


# tmux start
sudo ./install_tmux.sh
# tmux end

# python 3.6 start
sudo yum install python36 python36-setuptools python36-devel.x86_64 -y
sudo ln -s  /usr/bin/python36 /usr/bin/python3
sudo easy_install-3.6 pip
# python 3.6 end

# npm start
sudo yum install npm -y
# npm end

