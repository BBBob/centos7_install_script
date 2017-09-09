#!/bin/sh
# mirror start
yum install epel-release -y
# mirror end

# mkuser start
groupadd $1
useradd -m -g $1 -s /bin/bash $1
echo "$1    ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
passwd $1
echo "please exit and log in with new user now!"
#sudo vim /etc/sudoers
# mkuser end


