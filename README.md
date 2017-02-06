# Installing the IonQT Wallet on Linux.

This install will detect your linux distro and install the QT wallet if it is supported. If your distro is not suported do not worry, I am working on more distros all the time).

If you want a single line install here is the code to run in terminal:

curl -s https://gist.githubusercontent.com/sk00t3r/ff9b32c5f06bf289a54b794a97469cf8/raw/331a434ae9010c1bcfaa3cbeae7f5abfff964dc9/installQT.py | python

# Note: 
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the instructions below.

# Alternative Install:

cd /opt

sudo apt-get install git -y

sudo wget https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/installQT.py

sudo chmod 755 installQT.py

sudo ./installQT.py
