#!/usr/bin/python

import platform
import subprocess
import urllib
import os

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

if version == "16.04":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16iond.sh", "ubuntu16iond.sh")
        os.chmod('ubuntu16iond.sh', 0755)        
        subprocess.call("./ubuntu16iond.sh", shell=True)

elif version == "16.10":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16iond.sh", "ubuntu16iond.sh")
        os.chmod('ubuntu16iond.sh', 0755)        
        subprocess.call("./ubuntu16iond.sh", shell=True)

elif version == "14.04":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu14iond.sh", "ubuntu14iond.sh")
        os.chmod('ubuntu14iond.sh', 0755)
        subprocess.call("./ubuntu14iond.sh", shell=True)

else:
        print("Sorry version not yet supported.")
