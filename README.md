# Installing The IonQT Wallet On Linux.
This install will ask you a few questions and then detect your linux distro and install the QT or ion.d wallet if it is supported. If your distro is not suported do not worry, I am working on more distros all the time.

# Note: 
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the alternative automated install below.

You may have to install curl (not all distros cone with this installed). To install curl run the following:

sudo apt-get install curl -y

curl -s https://gist.githubusercontent.com/sk00t3r/f49234fa5bddbca3614cb7e60c63d44b/raw/5b7596a13a38ed8bc0e72a51c0ebb8f191b99d38/installtest.py | python

Copy the ion.conf to the correct directory.

# Alternative Automated Install:

cd /opt

sudo apt-get install git -y

sudo wget https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/installtest.py

sudo chmod 755 installtest.py

sudo ./installtest.py

Copy the ion.conf to the correct directory.
