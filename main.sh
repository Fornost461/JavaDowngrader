#!/bin/bash

##	This is free and unencumbered software released into the public domain.
#	Anyone is free to copy, modify, publish, use, compile, sell, or
#	distribute this software, either in source code form or as a compiled
#	binary, for any purpose, commercial or non-commercial, and by any
#	means.
##	Please refer to <http://unlicense.org/>.


# running this script will have the same effect as running main.scpt

echo "Starting..."

#	Uninstall Java 7
sudo rm -Rf /Library/Internet\\ Plug-Ins/JavaAppletPlugin.plugin

#	Remove the Java 7 JDK if you installed it
sudo rm -Rf /Library/Java/JavaVirtualMachines/jdk1.7*.jdk

#	Re-enable Java 6
sudo ln -sf /System/Library/Java/Support/Deploy.bundle/Contents/Resources/JavaPlugin2_NPAPI.plugin /Library/Internet\\ Plug-Ins/JavaAppletPlugin.plugin
sudo ln -sf /System/Library/Frameworks/JavaVM.framework/Commands/javaws /usr/bin/javaws

echo "Over! Java 6 should now work!"
