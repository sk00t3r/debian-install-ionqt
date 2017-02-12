#!/bin/bash

echo "#### Installing Sudo ####"
apt-get install sudo -y
clear
sudo "#### Stopping iond ####"
iond stop
echo "### Removing old ION"
rm -rf /usr/bin/iond
rm -rf /usr/local/bin/iond
rm -rf /root/ion
clear
echo "#### Change to home directory ####"
cd ~/
clear
echo "#### Creating Swap ####"
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon -s
sudo echo "/swapfile swap sw 0 0" >> /etc/fstab
clear
echo "#### Updating Debian 16.xx ####"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install software-properties-common python-software-properties git build-essential libtool autotools-dev autoconf pkg-config libssl-dev libcrypto++-dev libevent-dev automake libminiupnpc-dev libgmp-dev libboost-all-dev libdb5.3-dev libdb5.3++-dev -y
clear
# echo "#### Installing silknetwork repository ####"
# sudo add-apt-repository ppa:silknetwork/silknetwork -y
sudo apt-get update -y
sudo apt-get ugrade -y
clear
echo "#### Downloading IOND Core ####"
git clone https://github.com/Ion-Network/Ion-Core.git ion
clear
echo "#### Installing IOND Core ####"
cd ion/src
make -f makefile.unix
mv ~/ion/src/xiond ~/ion/src/iond
chmod 755 ~/ion/src/iond
mv ~/ion/src/iond /usr/bin
clear
echo "#### Creating ION folder ####"
mkdir ~/.ionomy/
clear
echo "#### Backing up & Moving Old ION Wallet.dat & ion.conf ####"
cp -p -f -r ~/.ion/wallet.dat ~/.ion/wallet.dat.backup
cp -p -f -r ~/.ion/ion.conf ~/.ion/ion.conf.backup
mv ~/.ion/wallet.dat ~/.ionomy/
mv ~/.ion/ion.conf ~/.ionomy/
