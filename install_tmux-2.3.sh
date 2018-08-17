#!/bin/sh
# Install tmux on rhel/centos 7

# install deps
sudo yum install gcc kernel-devel ncurses-devel glibc-static make -y

# DOWNLOAD SOURCES FOR LIBEVENT AND MAKE AND INSTALL
curl -OL https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
tar -xvzf libevent-2.0.22-stable.tar.gz
cd libevent-2.0.22-stable
./configure --prefix=/usr/local
make
sudo make install
cd ..

# DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL
curl -OL https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
tar -xvzf tmux-2.3.tar.gz
cd tmux-2.3
LDFLAGS="-L/usr/local/lib -Wl,-rpath=/usr/local/lib" ./configure --prefix=/usr/local
make
sudo make install
cd ..

# pkill tmux
# close your terminal window (flushes cached tmux executable)
# open new shell and check tmux version
tmux -V
