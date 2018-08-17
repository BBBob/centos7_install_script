#!/bin/sh
# mirror start
yum install epel-release -y
# mirror end

if (( $# < 1 )) ; then
    echo "please input user name"
    exit
    #statements
fi
# mkuser start
groupadd $1
useradd -m -g $1 -s /bin/bash $1
echo "$1  ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
passwd $1

HOME=/home/$1
mkdir -p $HOME/.ssh
cat config/id_rsa.pub >> $HOME/.ssh/authorized_keys
chown -R $1:$1 $HOME/.ssh
#chmod 755 $HOME
chmod 700 $HOME/.ssh
chmod 600 $HOME/.ssh/authorized_keys

echo "please exit and log in with new user now!"
#sudo vim /etc/sudoers
# mkuser end


