#!/usr/bin/python

import platform

distro = platform.linux_distribution()[0]
version = platform.linux_distribution()[1]
name =  platform.linux_distribution()[2]

if version == 16.04
  subprocess.call("Ubuntu-16.xx-Test.sh")
 else 
  print "OS not Supported Yet."
