#!/bin/sh
sudo cp shadowsocks.json /etc/shadowsocks.json 
sudo cp shadowsocksstart /usr/bin/shadowsocksstart 
sudo cp shadowsocksstop /usr/bin/shadowsocksstop 
sudo cp shadowsocks.service /etc/systemd/system/shadowsocks.service
#sudo systemctl enable shadowsocks
#sudo systemctl start shadowsocks
