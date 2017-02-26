#!/bin/bash

echo "#### Installing Sudo ####"
echo " "
apt-get install sudo -y
clear
sudo "#### Stopping iond ####"
echo " "
sudo iond stop
echo "### Removing old ION"
echo " "
sudo rm -rf /usr/bin/iond
sudo rm -rf /usr/local/bin/iond
sudo rm -rf /root/ion
clear
echo "#### Change to home directory ####"
echo " "
cd ~/
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
sudo apt-get install libcrypto++-dev -y
sudo apt-get install libdb5.3++-dev -y
sudo apt-get install zip -y
clear
echo "#### Downloading IOND Core ####"
echo " "
git clone https://github.com/ionomy/ion
clear
echo "#### Installing IOND Core ####"
echo " "
cd ion/src
sudo make -f makefile.unix
sudo mv ~/ion/src/xiond ~/ion/src/iond
sudo chmod 755 ~/ion/src/iond
sudo mv ~/ion/src/iond /usr/bin
clear
echo "#### Creating ION folder ####"
echo " "
sudo mkdir ~/.ionomy/
clear
echo "#### Chevking for existing iond install ####"
echo " "
if [ -n "$(ls -A ~/.ionomy/wallet.dat)" ] && [ -n "$(ls -A ~/.ionomy/ion.conf)" ]
then
  clear
  echo "#### Backing up original ion wallet.dat & ion.conf ####"
  echo " "
  sudo cp -p -f -r ~/.ionomy/wallet.dat ~/.ionomy/wallet.dat.backup
  sudo cp -p -f -r ~/.ionomy/ion.conf ~/.ionomy/ion.conf.backup
elif [ -n "$(ls -A ~/.ion/wallet.dat)" ] && [ -n "$(ls -A ~/.ion/ion.conf)" ]
  then
  clear
  echo "#### Backing up & moving old ion wallet.dat & ion.conf ####"
  echo " "
  sudo cp -p -f -r ~/.ion/wallet.dat ~/.ion/wallet.dat.backup
  sudo cp -p -f -r ~/.ion/ion.conf ~/.ion/ion.conf.backup
  sudo mv ~/.ion/wallet.dat ~/.ionomy/
  sudo mv ~/.ion/ion.conf ~/.ionomy/
else
  clear
  echo "#### Please set a username and password, the password should be long and random ####"
  echo "#### Ctrl + X, Y, Enter to save file and exit ####"
  echo " "
  read -p "#### Press any key when you are ready to continue ####"
  Echo " "
  sudo wget https://raw.githubusercontent.com/sk00t3r/linux-ion/master/ion.conf
  sudo nano ion.conf
fi
clear
echo "#### changing to /user/bin ####"
echo " "
cd /user/bin
echo "#### starting iond ####"
echo " "
sudo ./iond --printtoconsole
