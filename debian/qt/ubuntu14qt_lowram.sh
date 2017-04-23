#!/bin/bash

echo "#### Changing to home directory ####"
echo " "
cd ~
clear
echo "#### Installing Sudo ####"
echo " "
apt-get install sudo -y
echo "#### Adding Required Repositories ####"
echo " "
sudo add-apt-repository ppa:silknetwork/silknetwork
clear
echo "#### Updating Ubuntu/Debian ####"
echo " "
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get update -y
clear
echo "#### Creating Swap ####"
echo " "
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon -s
sudo echo "/swapfile swap sw 0 0" >> /etc/fstab
clear
echo "#### Installing Dependencies ####"
echo " "
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
sudo apt-get install libdb4.8-dev -y
sudo apt-get install libdb4.8++-dev -y
sudo apt-get install libevent-dev -y
sudo apt-get install libgmp3-dev -y
sudo apt-get install libgmp-dev -y
sudo apt-get install libprotobuf-dev -y 
sudo apt-get install libqrencode-dev -y
sudo apt-get install libqrencode-devinstall -y
sudo apt-get install libqt4-dev -y
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
sudo apt-get install zip -y
clear
echo "#### Cloning Repo ####"
echo " "
git clone https://github.com/ionomy/ion
clear
echo "#### Changing To The Ion-Core Directory ####"
echo " "
cd ion/
clear
echo "#### Making ####"
echo " "
sudo qmake
sudo make
clear
cho "#### Chevking for existing iond install ####"
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
  echo " "
  sudo wget https://raw.githubusercontent.com/sk00t3r/linux-ion/master/ion.conf
  sudo nano ion.conf
  sudo mkdir ~/.ionomy
  sudo mv ~/ion/ion.conf ~/.ionomy/ion.conf
fi
clear
echo "#### Starting Ion-QT Wallet ####"
echo " "
sudo ./ionx-qt &
