read -r -p "Would you like your wallet.dat and ion.conf file backedup and auto-restored? Type no if this is is a new install [Y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
  then
    echo "Great we will begin backing up your files and noving them to new wallet"
    echo " "
    echo "#### Creating ION folder ####"
    echo " "
    sudo mkdir ~/.ionomy/
    echo "#### Backing up & Moving Old ION wallet.dat & ion.conf ####"
    echo " "
    sudo cp -p -f -r ~/.ion/wallet.dat ~/.ion/wallet.dat.backup
    sudo cp -p -f -r ~/.ion/ion.conf ~/.ion/ion.conf.backup
    sudo mv ~/.ion/wallet.dat ~/.ionomy/
    sudo mv ~/.ion/ion.conf ~/.ionomy/
    echo "#### Making ####"
    echo " "
    sudo qmake
    sudo make
    echo "#### Starting Ion-QT Wallet ####"
    echo " "
    sudo ./ionx-qt
   else
    echo "#### Making ####"
    echo " "
    sudo qmake
    sudo make
    echo "#### Starting Ion-QT Wallet ####"
    echo " "
    sudo ./ionx-qt
    fi
   
