#!/bin/sh
# mirror start
yum -y install epel-release
# mirror end

# mkuser start
groupadd users
useradd -m -g users -s /bin/zsh BBBob
passwd BBBob
echo "BBBob  ALL=(ALL)   ALL" | sudo tee -a /etc/sudoers
echo "please exit and log in with new user now!"
#sudo vim /etc/sudoers
# mkuser end


