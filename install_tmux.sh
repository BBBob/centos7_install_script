#!/bin/sh
sudo yum install tmux -y
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
cp config/.tmux.conf $HOME/
