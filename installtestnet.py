#!/usr/bin/python

import platform
import subprocess
import urllib
import os

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]
mem_bytes = os.sysconf('SC_PAGE_SIZE') * os.sysconf('SC_PHYS_PAGES')
mem = mem_bytes/(1024.**3)

def qt():
        if version == "14.04" and mem >= 3:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu14qt.sh", "ubuntu14qt.sh")
                os.chmod('ubuntu14qt.sh', 0755)
                subprocess.call("./ubuntu14qt.sh", shell=True)
                
        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu14qt_lowram.sh", "ubuntu14qt_lowram.sh")
                os.chmod('ubuntu14qt_lowram.sh', 0755)
                subprocess.call("./ubuntu14qt_lowram.sh", shell=True)
        
        elif version == "16.04" and mem >= 3:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu16qt.sh", "ubuntu16qt.sh")
                os.chmod('ubuntu16qt.sh', 0755)
                subprocess.call("./ubuntu16qt.sh", shell=True)
                                
        elif version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu16qt_lowram.sh", "ubuntu16qt_lowram.sh")
                os.chmod('ubuntu16qt_lowram.sh', 0755)
                subprocess.call("./ubuntu16qt_lowram.sh", shell=True)
                                
        elif version == "16.10" and mem >= 3:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu16qt.sh", "ubuntu16qt.sh")
                os.chmod('ubuntu16qt.sh', 0755)
                subprocess.call("./ubuntu16qt.sh", shell=True)

        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu16qt_lowram.sh", "ubuntu16qt_lowram.sh")
                os.chmod('ubuntu16qt_lowram.sh', 0755)
                subprocess.call("./ubuntu16qt_lowram.sh", shell=True)
        
        elif version == "17.04" and mem >= 3:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu17qt.sh", "ubuntu17qt.sh")
                os.chmod('ubuntu17qt.sh', 0755)
                subprocess.call("./ubuntu17qt.sh", shell=True)
                                
        elif version == "17.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu17qt_lowram.sh", "ubuntu17qt_lowram.sh")
                os.chmod('ubuntu17qt_lowram.sh', 0755)
                subprocess.call("./ubuntu17qt_lowram.sh", shell=True)        
                                
        elif version == "18.1" and mem >= 3:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu16qt.sh", "ubuntu16qt.sh")
                os.chmod('ubuntu16qt.sh', 0755)
                subprocess.call("./ubuntu16qt.sh", shell=True)
                
        elif version == "18.1":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/qt/ubuntu16qt_lowram.sh", "ubuntu16qt_lowram.sh")
                os.chmod('ubuntu16qt_lowram.sh', 0755)
                subprocess.call("./ubuntu16qt_lowram.sh", shell=True)
        
        else:
                print("Sorry version not yet supported.")
                                
def arm_qt():
        if version == "8.0":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/raspberry_pi/rpi_qt.sh", "rpi_qt.sh")
                os.chmod('rpi_qt.sh', 0755)
                subprocess.call("./rpi_qt.sh", shell=True)
        else:
                print("Sorry version not yet supported.")

def arm_iond():
        if version == "8.0":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/raspberry_pi/rpi_iond.sh", "rpi_iond.sh")
                os.chmod('rpi_iond.sh', 0755)
                subprocess.call("./rpi_iond.sh", shell=True)
        else:
                print("Sorry version not yet supported.")
                
def iond():
        if version == "14.04" and mem >= 4:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu14iond.sh", "ubuntu14iond.sh")
                os.chmod('ubuntu14iond.sh', 0755)
                subprocess.call("./ubuntu14iond.sh", shell=True)
                
        elif version == "14.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu14iond_lowram.sh", "ubuntu14iond_lowram.sh")
                os.chmod('ubuntu14iond_lowram.sh', 0755)
                subprocess.call("./ubuntu14iond_lowram.sh", shell=True)
        
        elif version == "16.04" and mem >= 4:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu16iond.sh", "ubuntu16iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16iond.sh", shell=True)
                              
        elif version == "16.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu16iond_lowram.sh", "ubuntu16iond_lowram.sh")
                os.chmod('ubuntu16iond_lowram.sh', 0755)
                subprocess.call("./ubuntu16iond_lowram.sh", shell=True)
                                
        elif version == "16.10" and mem >= 4:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu16iond.sh", "ubuntu16iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16iond.sh", shell=True)

        elif version == "16.10":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu16iond_lowram.sh", "ubuntu16iond_lowram.sh")
                os.chmod('ubuntu16iond_lowram.sh', 0755)
                subprocess.call("./ubuntu16iond_lowram.sh", shell=True)
        
        elif version == "17.04" and mem >= 4:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu17iond.sh", "ubuntu17iond.sh")
                os.chmod('ubuntu17iond.sh', 0755)
                subprocess.call("./ubuntu17iond.sh", shell=True)
                                
        elif version == "17.04":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu17iond_lowram.sh", "ubuntu17iond_lowram.sh")
                os.chmod('ubuntu17iond_lowram.sh', 0755)
                subprocess.call("./ubuntu17iond_lowram.sh", shell=True)                        
        
        elif version == "18.1" and mem >= 4:
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu16iond.sh", "ubuntu16iond.sh")
                os.chmod('ubuntu16iond.sh', 0755)
                subprocess.call("./ubuntu16iond.sh", shell=True)
                
        elif version == "18.1":
                urllib.urlretrieve ("https://raw.githubusercontent.com/sk00t3r/linux-ion/testnet/debian/iond/ubuntu16iond_lowram.sh", "ubuntu16iond_lowram.sh")
                os.chmod('ubuntu16iod_lowram.sh', 0755)
                subprocess.call("./ubuntu16iond_lowram.sh", shell=True)
           
        else:
                print("Sorry version not yet supported.")
                
choice = raw_input(" \n Type 'A' to install the ion QT wallet. \n \n Type 'B' to install the ion.d service. \n \n Type 'C' to install the QT wallet on your ARM (rpi/pine64) device. \n \n Type 'D' to install the ion.d service on your ARM (rpi/pine64) device. \n \n \n Type 'Q' to quit. \n \n \n ")

if choice == 'A' or choice == 'a':
        print("\n Okay, installing ion testnet QT wallet. \n")
        qt()
elif choice == 'B' or choice == 'b':
        print("\n Okay, installing the testnet ion.d service. \n")
        iond()
elif choice == 'C' or choice == 'c':
        print("\n Okay, installing the ion testnet QT wallet on your ARM device. \n")
        arm_qt()
elif choice == 'D' or choice == 'd':
        print("\n Okay, installing the testnet ion.d service on your ARM device. \n")
        arm_iond()
        print("\n Okay, goodbye. \n")
else:
        print("\n Invalid choice, program will now exit. \n")
