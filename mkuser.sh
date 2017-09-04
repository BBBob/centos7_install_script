#!/bin/sh
groupadd users
useradd -m -g users -s /bin/zsh BBBob
passwd BBBob
sudo vim /etc/sudoers
