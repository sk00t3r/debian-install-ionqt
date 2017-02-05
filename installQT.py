#!/usr/bin/python

import platform
import subprocess

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

if name == "Xenial Xerus" or "Yakkety Yak":
        subprocess.call("./ubuntu16.sh", shell=True)

elif name == "Trusty Tahr":
        subprocess.call("./ubuntu14.sh", shell=True)

else:
        print("Sorry version not yet supported.")
