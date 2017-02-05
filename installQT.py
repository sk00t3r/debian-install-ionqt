#!/usr/bin/python

import platform
import subprocess
import urllib
import os

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

if name == "Xenial Xerus" or "Yakkety Yak":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16.sh", "ubuntu16.sh")
        os.chmod('ubuntu16.sh', 0755)        
        subprocess.call("./ubuntu16.sh", shell=True)

elif name == "trusty":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu14.sh", "ubuntu14.sh")
        os.chmod('ubuntu14.sh', 0755)
        subprocess.call("./ubuntu14.sh", shell=True)

else:
        print("Sorry version not yet supported.")
