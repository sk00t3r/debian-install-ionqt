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
echo "#### Adding Bicoin PPA ####"
add-apt-repository ppa:bitcoin/bitcoin
clear
echo "#### Updating Ubuntu/Debian ####"
echo " "
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get update -y
clear
echo "#### Creating Swap ####"
fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
swapon -s
echo "/swapfile none swap sw 0 0" >> /etc/fstab
clear
echo "#### Installing Dependencies ####"
echo " "
apt-get install software-properties-common -y 
apt-get install automake -y 
apt-get install libevent-dev -y
apt-get install libminiupnpc-dev -y
apt-get install miniupnpc -y
apt-get install libevent-dev -y
apt-get install libgmp-dev -y
apt-get install libboost-all-dev -y
apt-get install libdb4.8-dev -y
apt-get install python-software-properties -y 
apt-get install git -y 
apt-get install build-essential -y
apt-get install libtool -y 
apt-get install autotools-dev -y
apt-get install autoconf -y
apt-get install pkg-config -y
apt-get install libssl-dev -y
apt-get install libcrypto++-dev -y
apt-get install libdb4.8++-dev -y
apt-get install zip -y
clear
echo "#### Downloading IOND Core ####"
echo " "
git clone https://github.com/ionomy/ion
clear
echo "#### Creating ION folder ####"
echo " "
mkdir ~/.ioncoin/
clear
echo "#### Checking for an existing testnet iond install ####"
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
  make install
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
  make install
else
  clear
  echo "#### No Existing Wallet Found, Installing TestNet IOND Core ####"
  echo " "
  cd ion
  ./autogen.sh
  ./configure
  make
  make install
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
echo "#### Would you like to start iond in print to console mode? Generally you want No. [Y/n] ####"
echo " "
read console
if [ $console == "Y" ] || [ $console == "y" ]
  	then
  	clear
  	echo "#### Okay, starting in print to console mode. ####" 
	echo "#### Open a new teminal session and type" "sudo pkill -9 xiond" "to quit iond ####"
  	echo " "
	read -p "#### Press any key when you are ready to continue ####"
  	iond --printtoconsole &>/dev/null
elif [ $console == "N" ] || [ $console == "n" ]
	then
  	clear
  	echo "#### Okay, starting test net xiond in silent mode. ####"
	echo "#### Type" "sudo pkill -9 xiond" "to quit iond ####"
  	iond &>/dev/null
else
  	clear
 	echo "#### Invalid choice selected, defaulting to silent mode. ####"
	echo "#### Type" "sudo pkill -9 xiond" "to quit iond ####"
	iond &>/dev/null
fi
