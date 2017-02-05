#!/usr/bin/python

import platform

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

if version == 16.04 or version == 16.10
  subprocess.call("16.xx.sh", shell=True)
 else 
  print "OS not Supported Yet."
