!/usr/bin/python


import platform
import subprocess
import urllib
import os

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

def qt():
        if version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/qt/ubuntu16.sh", "ubuntu16.sh")
                os.chmod('ubuntu16.sh', 0755)
                subprocess.call("./ubuntu16.sh", shell=True)

        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/qt/ubuntu16.sh", "ubuntu16.sh")
                os.chmod('ubuntu16.sh', 0755)
                subprocess.call("./ubuntu16.sh", shell=True)

        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/qt/ubuntu14.sh", "ubuntu14.sh")
                os.chmod('ubuntu14.sh', 0755)
                subprocess.call("./ubuntu14.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

def vps():
        if version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/qt/untu16vps.sh", "ubuntu16vps.sh")
                os.chmod('ubuntu16vps.sh', 0755)
                subprocess.call("./ubuntu16vps.sh", shell=True)
        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/qt/ubuntu16vps.sh", "ubuntu16vps.sh")
                os.chmod('ubuntu16vps.sh', 0755)
                subprocess.call("./ubuntu16vps.sh", shell=True)
        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/qt/ubuntu14vps.sh", "ubuntu14vps.sh")
                os.chmod('ubuntu14vps.sh', 0755)
                subprocess.call("./ubuntu14vps.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

def arm():
        if version == "8.0":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/raspberry_pi/rpi.sh", "rpi.sh")
                os.chmod('rpi.sh', 0755)
                subprocess.call("./rpi.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

def iond():
        if version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/iond/ubuntu16iond.sh", "ubuntu16iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16iond.sh", shell=True)
        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/iond/ubuntu16iond.sh", "ubuntu16iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16iond.sh", shell=True)
        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testing/debian/iond/ubuntu14iond.sh", "ubuntu14iond.sh")
                os.chmod('ubuntu14iond.sh', 0755)
                subprocess.call("./ubuntu14iond.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

choice = raw_input(" Type 'A' to install the QT wallet on your personal dekstop or laptop. \n Tpye 'B' to install the QT wallet on a low RAM VPS. \n Type 'C' to install the QT wallet on a Raspberry Pi or a Pine64. \n Type 'D' to install the ion.d service only. \n \n ")

if choice == 'A' or choice == 'a':
        print("Okay, installing QT wallet on your personal computer.")
        qt()
elif choice == 'B' or choice == 'b':
        print("Okay, installing QT wallet on your VPS.")
        vps()
elif choice == 'C' or choice == 'c':
        print("Okay, installing QT wallet on your Raspberry Pi or Pine64.")
        arm()
elif choice == 'D' or choice == 'd':
        print("Okay, installing the ion.d service on your computer.")
        iond()
else:
        print "Invalid choice, program will now exit."
