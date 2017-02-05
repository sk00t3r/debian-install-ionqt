#!/bin/bash
echo "Changing to home directory"
cd ~
echo "Installing Sudo"
apt-get install sudo -y
echo "Updating Ubuntu/Debian"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
echo "Installing Dependencies"
sudo apt-get install git build-essential libtool autotools-dev autoconf pkg-config libssl-dev libcrypto++-dev libevent-dev automake libminiupnpc-dev libgmp-dev libboost-all-dev git build-essential libssl-dev libboost-all-dev libdb5.3-dev git libdb5.3++-dev libminiupnpc-dev make zip automake autogen libtool qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev-tools build-essential libboost-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libdb++-dev libminiupnpc-dev libqrencode-devinstall libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
echo "Cloning Repo"
sudo git clone https://github.com/Ion-Network/Ion-Core
echo "Changing To The Ion-Core Directory"
cd Ion-Core/
echo "Making"
sudo make
echo "Starting Ion-QT Wallet"
sudo ./ionx-qt
