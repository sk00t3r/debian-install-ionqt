#!/bin/bash

import platform
import subprocess
import urllib
import os

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

qt = input(' Are you installing the QT wallet? [Y/n] ').lower()
  if qt.startswith('y'):
    desktoplaptop = input(' Are you installing the QT wallet your personal desktop or laptop? [Y/n] ').lower()
      if desktoplaptop.startswith('y'):
       print("Okay, installing QT wallet on your personal computer.")
        if version == "16.04":
          urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16.sh", "ubuntu16.sh")
          os.chmod('ubuntu16.sh', 0755)        
          subprocess.call("./ubuntu16.sh", shell=True)

        elif version == "16.10":
          urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16.sh", "ubuntu16.sh")
          os.chmod('ubuntu16.sh', 0755)        
          subprocess.call("./ubuntu16.sh", shell=True)

        elif version == "14.04":
          urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu14.sh", "ubuntu14.sh")
          os.chmod('ubuntu14.sh', 0755)
          subprocess.call("./ubuntu14.sh", shell=True)

        else:
          print("Sorry version not yet supported.")
      else
      lowramvps = input(' Are you installing the QT wallet on a low ram VPS? [Y/n] ').lower()
        if lowramvps.startswith('y')
          print("Okay, installing QT wallet on your VPS.")
          if version == "16.04":
            urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16vps.sh", "ubuntu16vps.sh")
            os.chmod('ubuntu16vps.sh', 0755)        
            subprocess.call("./ubuntu16vps.sh", shell=True)

          elif version == "16.10":
            urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu16vps.sh", "ubuntu16vps.sh")
            os.chmod('ubuntu16vps.sh', 0755)        
            subprocess.call("./ubuntu16vps.sh", shell=True)
        
          elif version == "8.0":
            urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/raspberry_pi/rpi.sh", "rpi.sh")
            os.chmod('rpi.sh', 0755)        
            subprocess.call("./rpi.sh", shell=True)

          elif version == "14.04":
            urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/ubuntu14vps.sh", "ubuntu14vps.sh")
            os.chmod('ubuntu14vps.sh', 0755)
            subprocess.call("./ubuntu14vps.sh", shell=True)

          else:
            print("Sorry version not yet supported.")
          else
      arm = input(' Are you installing the QT wallet on a Raspberry Pi or Pin64? [Y/n] ').lower()
        if arm.startswith('y')
          print("Okay, installing QT wallet on your Raspberry Pi or Pine64.")
          if version == "8.0":
            urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/raspberry_pi/rpi.sh", "rpi.sh")
            os.chmod('rpi.sh', 0755)        
            subprocess.call("./rpi.sh", shell=True)
          else:
            print("Sorry version not yet supported.")
  else:
    iond = input(' Would you like to install the ion.d service? [Y/n] ').lower()
      if iond.startswith('y')
        print("Okay, installing the ion.d service on your computer.")
        urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/debian-install-ionqt/master/raspberry_pi/rpi.sh", "rpi.sh")
        os.chmod('rpi.sh', 0755)        
        subprocess.call("./rpi.sh", shell=True)
  else:
    print ("Okay, goodbye!")
exit
