#!/bin/bash

echo "#### Changing to home directory ####"
cd ~
clear
echo "#### Installing Sudo ####"
read -rst 0.8
apt-get install sudo -y
clear
echo "#### Updating Ubuntu/Debian ####"
read -rst 0.8
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get update -y
clear
echo "#### Installing Dependencies ####"
read -rst 0.8
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
read -rst 0.8
git clone https://github.com/ionomy/ion
clear
echo "#### Changing To The Ion-Core Directory ####"
read -rst 0.8
cd ion/
clear
echo "#### Making ####"
read -rst 0.8
sudo qmake
sudo make
clear
echo "#### Starting Ion-QT Wallet ####"
read -rst 0.8
sudo ./ionx-qt
