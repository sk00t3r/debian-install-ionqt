# Installing The Rebase Ion Wallet On Linux.
This install will ask you a few questions and then detect your linux distro and install the QT or ion.d wallet if it is supported. If your distro is not suported do not worry, I am working on more distros all the time.

# Note: 
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the alternative automated install below.

You may have to install some dependencies. To install run the following:

apt-get install curl -y

apt-get install python-minimal -y

apt-get install python-tk -y

python <(curl "https://gist.githubusercontent.com/sk00t3r/57b4745fe913f59a51647acd36b9e396/raw/5158e46307c0d015041f80f2553f5bc903f2968a/installrebase.py" -s -N)

# Alternative Rebase Automated Install:

cd /opt

sudo apt-get install git -y

wget https://raw.githubusercontent.com/sk00t3r/linux-ion/rebase/installrebase.py

chmod 755 installrebase.py

./installrebase.py

Copy the ioncoin.conf to the correct directory, (cd ~/.ioncoin/) and edit the file to create a username and password.

# Raspberry Pi Rebase Install:

Minimum 8GB SD card is needed.

You need to expand your storage by running the following from terminal:

sudo raspi-config

Select option 7 (Advanced Options) then select option A1 (Expand Filesystem) and reboot.

# Starting Rebase Ion-QT Wallet:

If you need to start the ion-qt wallet.

cd /usr/local/bin

ion-qt&

# Stopping Rebase Ion-QT Wallet:

If you need to stop the ion-qt wallet click the "x" or close the wallet.

# Starting Rebase Iond Service:

If your computer restarts or you jsut need to start the iond service.

cd /usr/local/bin

iond&

# Stopping Rebase Iond Service:

If you need to stop the iond service use "iond stop".
