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
sudo apt-get install git build-essential libtool autotools-dev autoconf pkg-config libssl-dev libcrypto++-dev libevent-dev libminiupnpc-dev libgmp-dev libboost-all-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libcrypto++-dev libqrencode-dev -y
sudo apt-get install libminiupnpc-dev --with-miniupnpc and --enable-upnp-default -y
clear
echo "####Cloning Repo####"
sudo git clone https://github.com/Ion-Network/Ion-Core
clear
echo "####Changing To The Ion-Core Directory####"
cd Ion-Core/
clear
echo "####Making####"
sudo make
clear
echo "####Installing####"
sudo install
clear
echo "####Starting Ion-QT Wallet####"
sudo ./ionx-qt
