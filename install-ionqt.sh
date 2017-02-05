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
sudo apt-get install git build-essential libtool autotools-dev autoconf pkg-config libssl-dev libcrypto++-dev libevent-dev libminiupnpc-dev libgmp-dev libboost-all-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler libcrypto++-dev libqrencode-dev -y
sudo apt-get install libminiupnpc-dev (see --with-miniupnpc and --enable-upnp-default) -y
echo "Cloning Repo"
sudo git clone https://github.com/Ion-Network/Ion-Core
echo "Changing To The Ion-Core Directory"
cd Ion-Core/
echo "Making"
sudo make
echo "Installing"
sudo install
echo "Starting Ion-QT Wallet"
sudo ./ionx-qt
