#!/usr/bin/python

import platform
import subprocess
import urllib
import os

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

def qt():
        if version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu16.sh", "ubuntu16.sh")
                os.chmod('ubuntu16.sh', 0755)
                subprocess.call("./ubuntu16.sh", shell=True)

        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu16.sh", "ubuntu16.sh")
                os.chmod('ubuntu16.sh', 0755)
                subprocess.call("./ubuntu16.sh", shell=True)
                
        elif version == "18.1":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu16.sh", "ubuntu16.sh")
                os.chmod('ubuntu16.sh', 0755)
                subprocess.call("./ubuntu16.sh", shell=True)

        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu14.sh", "ubuntu14.sh")
                os.chmod('ubuntu14.sh', 0755)
                subprocess.call("./ubuntu14.sh", shell=True)
                
        elif version == "17.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu17.sh", "ubuntu17.sh")
                os.chmod('ubuntu17.sh', 0755)
                subprocess.call("./ubuntu17.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

def vps_qt():
        if version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/untu16vps.sh", "ubuntu16vps.sh")
                os.chmod('ubuntu16vps.sh', 0755)
                subprocess.call("./ubuntu16vps.sh", shell=True)
        
        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu16vps.sh", "ubuntu16vps.sh")
                os.chmod('ubuntu16vps.sh', 0755)
                subprocess.call("./ubuntu16vps.sh", shell=True)
        
        elif version == "18.1":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu16vps.sh", "ubuntu16vps.sh")
                os.chmod('ubuntu16vps.sh', 0755)
                subprocess.call("./ubuntu16vps.sh", shell=True)
        
        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu14vps.sh", "ubuntu14vps.sh")
                os.chmod('ubuntu14vps.sh', 0755)
                subprocess.call("./ubuntu14vps.sh", shell=True)
                
        elif version == "17.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/qt/ubuntu17vps.sh", "ubuntu17vps.sh")
                os.chmod('ubuntu17vps.sh', 0755)
                subprocess.call("./ubuntu17vps.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

def arm():
        if version == "8.0":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/raspberry_pi/rpi.sh", "rpi.sh")
                os.chmod('rpi.sh', 0755)
                subprocess.call("./rpi.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

def iond():
        if version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/iond/ubuntu16iond.sh", "ubuntu16iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16iond.sh", shell=True)
        
        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/iond/ubuntu16iond.sh", "ubuntu16iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16iond.sh", shell=True)
        
        elif version == "18.1":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/iond/ubuntu16iond.sh", "ubuntu16iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16iond.sh", shell=True)
        
        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/iond/ubuntu14iond.sh", "ubuntu14iond.sh")
                os.chmod('ubuntu14iond.sh', 0755)
                subprocess.call("./ubuntu14iond.sh", shell=True)
                
        elif version == "17.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/iond/ubuntu17iond.sh", "ubuntu17iond.sh")
                os.chmod('ubuntu17iond.sh', 0755)
                subprocess.call("./ubuntu17iond.sh", shell=True)
        else:
                print("Sorry version not yet supported.")
                
def vps_iond():
        if version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/vps_iond/ubuntu16vps_iond.sh", "ubuntu16vps_iond.sh")
                os.chmod('ubuntu16vps_iond.sh', 0755)
                subprocess.call("./ubuntu16vps_iond.sh", shell=True)
        
        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/vps_iond/ubuntu16vps_iond.sh", "ubuntu16vps_iond.sh")
                os.chmod('ubuntu16vps_iond.sh', 0755)
                subprocess.call("./ubuntu16vps_iond.sh", shell=True)
        
        elif version == "18.1":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/vps_iond/ubuntu16ivps_ond.sh", "ubuntu16vps_iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16vps_iond.sh", shell=True)
        
        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/vps_iond/ubuntu14vps_iond.sh", "ubuntu14vps_iond.sh")
                os.chmod('ubuntu14vps_iond.sh', 0755)
                subprocess.call("./ubuntu14vps_iond.sh", shell=True)
                
        elif version == "17.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/master/debian/vps_iond/ubuntu17vps_iond.sh", "ubuntu17vps_iond.sh")
                os.chmod('ubuntu17vps_iond.sh', 0755)
                subprocess.call("./ubuntu17vps_iond.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

choice = raw_input(" \n Type 'A' to install the QT wallet on your personal dekstop or laptop. \n \n Tpye 'B' to install the QT wallet on a low RAM VPS. \n \n Type 'C' to install the QT wallet on a Raspberry Pi or a Pine64. \n \n Type 'D' to install the ion.d service on your personal desktop or laptop. \n \n Type 'C' to install the ion.d service on a low RAM VPS. \n \n \n Type 'Q' to quit. \n \n \n ")

if choice == 'A' or choice == 'a':
        print("\n Okay, installing QT wallet on your personal computer. \n")
        qt()
elif choice == 'B' or choice == 'b':
        print("\n Okay, installing QT wallet on your VPS. \n")
        vps_qt()
elif choice == 'C' or choice == 'c':
        print("\n Okay, installing QT wallet on your Raspberry Pi or Pine64. \n")
        arm()
elif choice == 'D' or choice == 'd':
        print("\n Okay, installing the ion.d service on your computer. \n")
        iond()
elif choice == 'D' or choice == 'd':
        print("\n Okay, installing the ion.d service on your VPS. \n")
        vps_iond()
elif choice == 'Q' or choice == 'q':
        print("\n Okay, goodbye. \n")
else:
        print("\n Invalid choice, program will now exit. \n")
