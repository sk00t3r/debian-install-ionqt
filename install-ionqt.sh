#!/bin/bash
echo "####Changing to home directory####"
cd ~
clear
echo "####Installing Sudo####"
apt-get install sudo -y
clear
echo "####Updating Ubuntu/Debian####"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
clear
echo "####Installing Dependencies####"
sudo apt-get install autoconf
sudo apt-get install autogen
sudo apt-get install automake
sudo apt-get install autotools-dev
sudo apt-get install bsdmainutils
sudo apt-get install build-essential
sudo apt-get install git
sudo apt-get install libboost-all-dev
sudo apt-get install libboost-dev
sudo apt-get install libboost-filesystem-dev
sudo apt-get install libboost-program-options-dev
sudo apt-get install libboost-system-dev
sudo apt-get install libboost-thread-dev
sudo apt-get install libcrypto++-dev
sudo apt-get install libdb++-dev
sudo apt-get install libdb5.3++-dev
sudo apt-get install libdb5.3-dev
sudo apt-get install libevent-dev
sudo apt-get install libgmp3-dev
sudo apt-get install libgmp-dev
sudo apt-get install libminiupnpc-dev --with-miniupnpc and --enable-upnp-default
sudo apt-get install libprotobuf-dev
sudo apt-get install libqrencode-dev
sudo apt-get install libqrencode-devinstall
sudo apt-get install libqt5core5a
sudo apt-get install libqt5dbus5
sudo apt-get install libqt5gui5
sudo apt-get install libssl-dev
sudo apt-get install libtool
sudo apt-get install make
sudo apt-get install pkg-config
sudo apt-get install protobuf-compiler
sudo apt-get install qt5-default
sudo apt-get install qt5-qmake
sudo apt-get install qtbase5-dev-tools
sudo apt-get install qttools5-dev
sudo apt-get install qttools5-dev-tools
clear
echo "####Cloning Repo####"
git clone https://github.com/Ion-Network/Ion-Core
clear
echo "####Changing To The Ion-Core Directory####"
cd Ion-Core/
#clear
echo "####Making####"
sudo qmake
sudo make
#clear
echo "####Installing####"
sudo install
#clear
echo "####Starting Ion-QT Wallet####"
sudo ./ionx-qt
