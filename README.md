# Installing The IonQT Wallet On Linux.
This install will detect your linux distro and install the QT wallet if it is supported. If your distro is not suported do not worry, I am working on more distros all the time.

# Note: 
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the alternative automated install below.

You may have to install curl (not all distros cone with this installed). To install curl run the following:

sudo apt-get install curl -y

curl -s https://gist.githubusercontent.com/sk00t3r/ff9b32c5f06bf289a54b794a97469cf8/raw/331a434ae9010c1bcfaa3cbeae7f5abfff964dc9/installQT.py | python

Copy the ion.conf to the correct directory.

# Alternative Automated Install:

cd /opt

sudo apt-get install git -y

sudo wget https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/installQT.py

sudo chmod 755 installQT.py

sudo ./installQT.py

Copy the ion.conf to the correct directory.

# For Low RAM VPS and Raspberry Pi Installs:
This install will detect your linux distro and install the QT wallet if it is supported. If your distro is not suported do not worry, I am working on more distros all the time. The Raspberry Pi needs a minimum of a 8GB card. You also have to expand the drive to free up the needed space. sudo raspi-config and select option 1 then reboot.

Special thanks to bige for letting me use his VPS' and his time in troubleshooting.

# Note:
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the alternative automated install below.

You may have to install curl (not all distros cone with this installed). To install curl run the following:

sudo apt-get install curl -y

curl -s https://gist.githubusercontent.com/sk00t3r/90ba3cef5e959dd581b562db8673ad8a/raw/35fe87b2c25a3bbb7e37317137e4cdf63f74b65f/installQTvps.py | python

Copy the ion.conf to the correct directory.

# Alternative Low Ram VPS Automated Install:

cd /opt

sudo apt-get install git -y

sudo wget https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/installQTvps.py

sudo chmod 755 installQTvps.py

sudo ./installQTvps.py

Copy the ion.conf to the correct directory.

# Installing Ion.d On Linux.
This install will detect your linux distro and install iond if it is supported. If your distro is not suported do not worry, I am working on more distros all the time.

Special thanks to jord for letting me use his original iond code.

# Note: 
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the alternative automated install below.

You may have to install curl (not all distros cone with this installed). To install curl run the following:

sudo apt-get install curl -y

curl -s https://gist.githubusercontent.com/sk00t3r/a08fff9b7768c2fa76e2f2ff6f6bf692/raw/06b816bdabaecb34388607caec645bd1aaece53e/installiond.py | python

# Alternative Automated Install:

cd /opt

sudo apt-get install git -y

sudo wget https://raw.githubusercontent.com/sk00t3r/linux-ionqt/master/installiond.py

sudo chmod 755 installiond.py

sudo ./installiond.py
