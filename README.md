# Installing The Rebase Ion Wallet On Linux.
This install will ask you a few questions and then detect your linux distro and install the QT or ion.d wallet if it is supported. If your distro is not suported do not worry, I am working on more distros all the time.

# Note: 
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the alternative automated install below.

You may have to install some dependencies. To install run the following:

apt-get install curl -y

apt-get install python-minimal -y

apt-get install python-tk -y

python <(curl "https://gist.githubusercontent.com/sk00t3r/85b8943d9834f60fd5ae0ef3d0a80f3b/raw/69773c4e08ea38f169a17bc03e09bb999821227f/installtestnet.py" -s -N)

# Alternative Rebase Automated Install:

cd /opt

sudo apt-get install git -y

wget https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/installtestnet.py

chmod 755 installtestnet.py

./installtestnet.py

Copy the ion.conf to the correct directory, (cd ~/.ionomy/) and edit the file to create a username and password.

# Raspberry Pi TestNet Install:

Minimum 8GB SD card is needed.

You need to expand your storage by running the following from terminal:

sudo raspi-config

Select option 1

# Stopping Rebase Iond:

If you install the iond service only use "sudo pkill -9 iond". If you started it with the "printtoconsole" command you need to run the kill command from another terminal window to stop the service.
