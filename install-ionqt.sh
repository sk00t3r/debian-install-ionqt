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
sudo apt-get intsall	autoconf
sudo apt-get intsall	autogen
sudo apt-get intsall	automake
sudo apt-get intsall	autotools-dev
sudo apt-get intsall	bsdmainutils
sudo apt-get intsall	build-essential
sudo apt-get intsall	git
sudo apt-get intsall	libboost-all-dev
sudo apt-get intsall	libboost-dev
sudo apt-get intsall	libboost-filesystem-dev
sudo apt-get intsall	libboost-program-options-dev
sudo apt-get intsall	libboost-system-dev
sudo apt-get intsall	libboost-thread-dev
sudo apt-get intsall	libcrypto++-dev
sudo apt-get intsall	libdb++-dev
sudo apt-get intsall	libdb5.3++-dev
sudo apt-get intsall	libdb5.3-dev
sudo apt-get intsall	libevent-dev
sudo apt-get intsall	libgmp3-dev
sudo apt-get intsall	libgmp-dev
sudo apt-get intsall	libminiupnpc-dev --with-miniupnpc and --enable-upnp-default
sudo apt-get intsall	libprotobuf-dev
sudo apt-get intsall	libqrencode-dev
sudo apt-get intsall	libqrencode-devinstall
sudo apt-get intsall	libqt5core5a
sudo apt-get intsall	libqt5dbus5
sudo apt-get intsall	libqt5gui5
sudo apt-get intsall	libssl-dev
sudo apt-get intsall	libtool
sudo apt-get intsall	make
sudo apt-get intsall	pkg-config
sudo apt-get intsall	protobuf-compiler
sudo apt-get intsall	qt5-default
sudo apt-get intsall	qt5-qmake
sudo apt-get intsall	qtbase5-dev-tools
sudo apt-get intsall	qttools5-dev
sudo apt-get intsall	qttools5-dev-tools
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
