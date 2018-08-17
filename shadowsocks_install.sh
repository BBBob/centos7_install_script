#!/bin/sh
sudo cp config/shadowsocks.json /etc/shadowsocks.json 
sudo cp shadowsocksstart /usr/bin/shadowsocksstart 
sudo cp shadowsocksstop /usr/bin/shadowsocksstop 
sudo cp config/shadowsocks.service /etc/systemd/system/shadowsocks.service
#sudo systemctl enable shadowsocks
#sudo systemctl start shadowsocks
