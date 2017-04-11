# Installing The IonQT Wallet On Linux.
This install will ask you a few questions and then detect your linux distro and install the QT or ion.d wallet if it is supported. If your distro is not suported do not worry, I am working on more distros all the time.

# Note: 
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the alternative automated install below.

You may have to install curl. To install curl run the following:

sudo apt-get install curl -y

python <(curl "https://gist.githubusercontent.com/sk00t3r/85b8943d9834f60fd5ae0ef3d0a80f3b/raw/167bb8e72ca9eb2b248c2eb6a361288c5d5baed1/installtestnet.py" -s -N)

# Alternative Automated Install:

cd /opt

sudo apt-get install git -y

sudo wget https://raw.githubusercontent.com/sk00t3r/linux-ion/blob/testnet/installtestnet.py

sudo chmod 755 install.py

sudo ./install.py

Copy the ion.conf to the correct directory, (cd ~/.ionomy/) and edit the file to create a username and password.

# Raspberry Pi install:

Minimum 8GB SD card is needed.

You need to expand your storage by running the following from terminal:

sudo raspi-config

Select option 1

# Stopping iond:

If you install the iond service only use "sudo pkill -9 iond". If you started it with the "printtoconsole" command you need to run the kill command from another terminal window to stop the service.
