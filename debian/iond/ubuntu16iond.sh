#!/bin/bash

echo "#### Installing Sudo ####"
apt-get install sudo -y
clear
sudo "#### Stopping iond ####"
sudo iond stop
echo "### Removing old ION"
sudo rm -rf /usr/bin/iond
sudo rm -rf /usr/local/bin/iond
sudo rm -rf /root/ion
clear
echo "#### Change to home directory ####"
cd ~/
clear
#echo "#### Creating Swap ####"
#sudo fallocate -l 4G /swapfile
#sudo chmod 600 /swapfile
#sudo mkswap /swapfile
#sudo swapon /swapfile
#sudo swapon -s
#sudo echo "/swapfile swap sw 0 0" >> /etc/fstab
#clear
echo "#### Updating Debian 14.xx ####"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install software-properties-common -y 
sudo apt-get install automake -y 
sudo apt-get install libevent-dev -y
sudo apt-get install libminiupnpc-dev -y
sudo apt-get install miniupnpc -y
sudo apt-get install libevent-dev -y
sudo apt-get install libgmp-dev -y
sudo apt-get install libboost-all-dev -y
sudo apt-get install libdb5.3-dev -y
sudo apt-get install python-software-properties -y 
sudo apt-get install git -y 
sudo apt-get install build-essential -y
sudo apt-get install libtool -y 
sudp apt-get install autotools-dev -y
sudo apt-get install autoconf -y
sudo apt-get install pkg-config -y
sudo apt-get install libssl-dev -y
sudo apt-get install libcrypto++-dev -4
sudo apt-get install libdb5.3++-dev -y
sudo apt-get install zip -y
clear
echo "#### Installing silknetwork repository ####"
sudo add-apt-repository ppa:silknetwork/silknetwork -y
sudo apt-get update -y
sudo apt-get ugrade -y
clear
echo "#### Downloading IOND Core ####"
git clone https://github.com/ionomy/ion
clear
echo "#### Installing IOND Core ####"
cd ion/src
sudo make -f makefile.unix
sudo mv ~/ion/src/xiond ~/ion/src/iond
sudo chmod 755 ~/ion/src/iond
sudo mv ~/ion/src/iond /usr/bin
clear
echo "#### Creating ION folder ####"
sudo mkdir ~/.ionomy/
clear
echo "#### Backing up & Moving Old ION Wallet.dat & ion.conf ####"
sudo cp -p -f -r ~/.ion/wallet.dat ~/.ion/wallet.dat.backup
sudo cp -p -f -r ~/.ion/ion.conf ~/.ion/ion.conf.backup
sudo mv ~/.ion/wallet.dat ~/.ionomy/
sudo mv ~/.ion/ion.conf ~/.ionomy/
