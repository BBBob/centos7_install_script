#!/bin/sh

# install deps
sudo yum install gcc kernel-devel ncurses-devel glibc-static make -y

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
cp config/.tmux.conf $HOME/

# install libevent
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar xzvf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure && make
sudo make install
cd ..

# install the last stable version
wget https://github.com/tmux/tmux/releases/download/2.4/tmux-2.4.tar.gz
tar xzf tmux-2.4.tar.gz
cd tmux-2.4
./configure && make
sudo make install
cd ..

tmux -V
