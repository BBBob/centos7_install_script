sudo yum groupinstall "x window system" -y
sudo yum groupinstall xfce -y
sudo yum install firefox -y
sudo yum -y install xorg-x11-xauth xclock

# vnc
sudo yum install tigervnc tigervnc-server -y
sudo cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:1.service
sudo useradd vnc
sudo passwd bob
sudo su - bob
    vncpasswd
sudo systemctl start vncserver@:1.service


/lib/systemd/system/multi-user.target

#twm
wget https://mirrors.aliyun.com/centos/6/os/x86_64/Packages/xorg-x11-twm-1.0.3-5.1.el6.x86_64.rpm
rpm -ivh xorg-x11-twm-1.0.3-5.1.el6.x86_64.rpm
sudo yum install xterm xorg-x11-fonts* -y


