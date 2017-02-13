#!/bin/bash

echo "#### Changing to home directory ####"
cd ~
clear
echo "#### Installing Sudo ####"
read -s -t 5;
apt-get install sudo -y
clear
echo "#### Updating Ubuntu/Debian ####"
read -s -t 5;
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get update -y
clear
echo "#### Installing Dependencies ####"
read -s -t 5;
sudo apt-get install autoconf -y 
sudo apt-get install autogen -y
sudo apt-get install automake -y
sudo apt-get install autotools-dev -y
sudo apt-get install bsdmainutils -y
sudo apt-get install build-essential -y 
sudo apt-get install git -y
sudo apt-get install libboost-all-dev -y 
sudo apt-get install libboost-dev -y
sudo apt-get install libboost-filesystem-dev -y
sudo apt-get install libboost-program-options-dev -y 
sudo apt-get install libboost-system-dev -y
sudo apt-get install libboost-thread-dev -y 
sudo apt-get install libcrypto++-dev -y 
sudo apt-get install libdb++-dev -y
sudo apt-get install libdb5.3++-dev -y
sudo apt-get install libdb5.3-dev -y
sudo apt-get install libevent-dev-y
sudo apt-get install libgmp3-dev -y
sudo apt-get install libgmp-dev -y 
sudo apt-get install libprotobuf-dev -y
sudo apt-get install libqrencode-dev -y
sudo apt-get install libqrencode-devinstall -y
sudo apt-get install libqt5core5a -y
sudo apt-get install libqt5dbus5 -y
sudo apt-get install libqt5gui5 -y 
sudo apt-get install libssl-dev -y 
sudo apt-get install libtool -y 
sudo apt-get install make -y
sudo apt-get install miniupnpc -y
sudo apt-get install pkg-config -y
sudo apt-get install protobuf-compiler -y 
sudo apt-get install qt5-default -y
sudo apt-get install qt5-qmake -y
sudo apt-get install qtbase5-dev-tools -y 
sudo apt-get install qttools5-dev -y
sudo apt-get install qttools5-dev-tools -y
sudo apt-get install libminiupnpc-dev -y
clear
echo "#### Cloning Repo ####"
read -t 5;
git clone https://github.com/ionomy/ion
clear
echo "#### Changing To The Ion-Core Directory ####"
read -t 5;
cd ion/
clear
read -r -p "Would you like your wallet.dat and ion.conf file backedup and auto-restored? [Y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
  then
  #echo "#### Creating ION folder ####"
  #read -rst 1.8;
  #sudo mkdir ~/.ionomy/
  #clear
  #echo "#### Backing up & Moving Old ION wallet.dat & ion.conf ####"
  #read -rst 1.8;
  #sudo cp -p -f -r ~/.ion/wallet.dat ~/.ion/wallet.dat.backup
  #sudo cp -p -f -r ~/.ion/ion.conf ~/.ion/ion.conf.backup
  #sudo mv ~/.ion/wallet.dat ~/.ionomy/
  #sudo mv ~/.ion/ion.conf ~/.ionomy/
  #clear
  #echo "#### Making ####"
  #read -rst 1.8;
  #sudo qmake
  #sudo make
  #clear
  #echo "#### Starting Ion-QT Wallet ####"
  #read -rst 1.8;
  #sudo ./ionx-qt
  echo "You said YES!!"
else
#echo "#### Making ####"
#read -rst 1.8;
#sudo qmake
#sudo make
#clear
#echo "#### Starting Ion-QT Wallet ####"
#read -rst 1.8;
#sudo ./ionx-qt
echo "You Said No!!"
fi
