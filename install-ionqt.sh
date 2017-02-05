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
sudo apt-get install autoconf autogen automake autotools-dev bsdmainutils build-essential git libboost-all-dev libboost-dev libboost-filesystem-dev libboost-program-options-dev libboost-system-dev libboost-thread-dev libcrypto++-dev libdb++-dev libdb5.3++-dev libdb5.3-dev libevent-dev libgmp3-dev libgmp-dev libminiupnpc-dev --with-miniupnpc and --enable-upnp-default libprotobuf-dev libqrencode-dev libqrencode-devinstall libqt5core5a libqt5dbus5 libqt5gui5 libssl-dev libtool make pkg-config protobuf-compiler qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev qttools5-dev-tools -y
clear
echo "####Cloning Repo####"
git clone https://github.com/Ion-Network/Ion-Core
clear
echo "####Changing To The Ion-Core Directory####"
cd Ion-Core/
clear
echo "####Making####"
sudo qmake
sudo make
clear
echo "####Starting Ion-QT Wallet####"
sudo ./ionx-qt
