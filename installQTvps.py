#!/usr/bin/python

import platform
import subprocess
import urllib
import os

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

if version == "16.04":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16vps.sh", "ubuntu16vps.sh")
        os.chmod('ubuntu16vps.sh', 0755)        
        subprocess.call("./ubuntu16vps.sh", shell=True)

elif version == "16.10":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16vps.sh", "ubuntu16vps.sh")
        os.chmod('ubuntu16vps.sh', 0755)        
        subprocess.call("./ubuntu16vps.sh", shell=True)
        
elif version == "8.0":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16vps.sh", "ubuntu16vps.sh")
        os.chmod('ubuntu16vps.sh', 0755)        
        subprocess.call("./ubuntu16vps.sh", shell=True)

elif version == "14.04":
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu14vps.sh", "ubuntu14vps.sh")
        os.chmod('ubuntu14vps.sh', 0755)
        subprocess.call("./ubuntu14vps.sh", shell=True)

else:
        print("Sorry version not yet supported.")
