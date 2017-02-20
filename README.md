# Installing The IonQT Wallet On Linux.
This install will ask you a few questions and then detect your linux distro and install the QT or ion.d wallet if it is supported. If your distro is not suported do not worry, I am working on more distros all the time.

# Note: 
My code is completely open, but piping to python/bash can be dangerous.  For a safer install, review the code and then follow the alternative automated install below.

You may have to install curl. To install curl run the following:

sudo apt-get install curl -y

python <(curl "https://gist.githubusercontent.com/sk00t3r/ca93a8fb2e077770dc75e80df8aa6edf/raw/78e1366730e5aca6ac7d2ba3de6f4ed779aca99c/install.py" -s -N)

Copy the ion.conf to the correct directory, (cd ~/.ionomy/) and edit the file to create a username and password.

# Alternative Automated Install:

cd /opt

sudo apt-get install git -y

sudo wget https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/install.py

sudo chmod 755 install.py

sudo ./install.py

Copy the ion.conf to the correct directory, (cd ~/.ionomy/) and edit the file to create a username and password.
