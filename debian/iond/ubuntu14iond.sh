#!/bin/bash

echo "#### Installing Sudo ####"
echo " "
apt-get install sudo -y
clear
echo "#### Stopping iond ####"
echo " "
sudo iond stop
echo "### Removing old ION"
echo " "
rm -rf /usr/bin/iond
rm -rf /usr/local/bin/iond
rm -rf /root/ion
clear
echo "#### Change to home directory ####"
echo " "
cd ~/
clear
echo "#### Adding Bitcoin PPA ####"
sudo add-apt-repository ppa:bitcoin/bitcoin
#sudo add-apt-repository ppa:ionomy/ioncoin
clear
echo "#### Updating Ubuntu/Debian ####"
echo " "
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get update -y
clear
echo "#### Installing Dependencies ####"
echo " "
sudo apt-get install software-properties-common -y 
sudo apt-get install automake -y 
sudo apt-get install libevent-dev -y
sudo apt-get install libminiupnpc-dev -y
sudo apt-get install miniupnpc -y
sudo apt-get install libzmq3-dev -y
sudo apt-get install libevent-dev -y
sudo apt-get install libgmp-dev -y
sudo apt-get install libboost-all-dev -y
sudo apt-get install libdb4.8-dev -y
sudo apt-get install python-software-properties -y 
sudo apt-get install git -y 
sudo apt-get install build-essential -y
sudo apt-get install libtool -y 
sudo apt-get install autotools-dev -y
sudo apt-get install autoconf -y
sudo apt-get install pkg-config -y
sudo apt-get install libssl-dev -y
sudo apt-get install libcrypto++-dev -y
sudo apt-get install libdb4.8++-dev -y
sudo apt-get install zip -y
clear
echo "#### Downloading IOND Core ####"
echo " "
git clone https://github.com/ionomy/ion
clear
echo "#### Creating ION folder ####"
echo " "
mkdir ~/.ioncoin/
clear
echo "#### Checking for an existing iond install ####"
echo " "
if [ -n "$(ls -A ~/.ionomy/wallet.dat)" ] && [ -n "$(ls -A ~/.ionomy/ion.conf)" ]
  then
  clear
  echo "#### Backing up original ion wallet.dat & ion.conf ####"
  echo " "
  cp -p -f -r ~/.ionomy/wallet.dat ~/.ionomy/wallet.dat.backup
  cp -p -f -r ~/.ionomy/ion.conf ~/.ionomy/ion.conf.backup
  mv ~/.ionomy/wallet.dat ~/.ioncoin/
  mv ~/.ionomy/ion.conf ~/.ionomy/ioncoin.conf
  mv ~/.ionomy/ioncoin.conf ~/.ioncoin/
  echo "#### Installing IOND Core ####"
  echo " "
  cd ion
  ./autogen.sh
  ./configure
  make
  sudo make install
elif [ -n "$(ls -A ~/.ion/wallet.dat)" ] && [ -n "$(ls -A ~/.ion/ion.conf)" ]
  then
  clear
  echo "#### Backing up & moving old ion wallet.dat & ion.conf ####"
  echo " "
  cp -p -f -r ~/.ion/wallet.dat ~/.ion/wallet.dat.backup
  cp -p -f -r ~/.ion/ion.conf ~/.ion/ion.conf.backup
  mv ~/.ion/wallet.dat ~/.ioncoin/
  mv ~/.ion/ion.conf ~/.ion/ioncoin.conf
  mv ~/.ion/ioncoin.conf ~/.ioncoin/
  echo "#### Installing IOND Core ####"
  echo " "
  cd ion
  ./autogen.sh
  ./configure
  make
  sudo make install
elif [ -n "$(ls -A ~/.ioncoin/wallet.dat)" ] && [ -n "$(ls -A ~/.ioncoin/ioncoin.conf)" ]
  then
  clear
  echo "#### Backing up old ion wallet.dat & ion.conf ####"
  echo " "
  cp -p -f -r ~/.ioncoin/wallet.dat ~/.ioncoin/wallet.dat.backup
  cp -p -f -r ~/.ioncoin/ioncoin.conf ~/.ioncoin/ioncoin.conf.backup
  echo "#### Installing IOND Core ####"
  echo " "
  cd ion
  ./autogen.sh
  ./configure
  make
  sudo make install
else
  clear
  echo "#### No Existing Wallet Found, Installing IOND Core ####"
  echo " "
  cd ion
  ./autogen.sh
  ./configure
  make
  sudo make install
  cd ~/.ioncoin/
  clear
  echo "#### Please set a username and password, the password should be long and random ####"
  echo "#### Ctrl + X, Y, Enter to save file and exit ####"
  echo " "
  read -p "#### Press any key when you are ready to continue ####"
  echo " "
  wget https://raw.githubusercontent.com/sk00t3r/linux-ion/rebase/ioncoin.conf -O ioncoin.conf
  nano ioncoin.conf
fi
clear
echo "#### Changing to /usr/local/bin ####"
echo " "
cd /usr/local/bin
echo "#### Starting ion.d service ####"
echo " "
echo "#### Type" "sudo iond stop" "to quit iond ####"
iond&
