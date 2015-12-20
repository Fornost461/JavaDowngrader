JavaDowngrader
==============

This script lets you downgrade your mac from Java 7 to Java 6.


### Who should use this script:

If:

* you are on Snow Leopard (that is, Mac OS 10.6.x)
* and you messed up your Java installation because you tried to install Java 7 by running the installer whereas it was not supposed to be compatible with your computer

Then this script may definitely help you. It will restore your Java 6 configuration. Then, you will be able to use Java programs as before (web applets, software such as Minecraft and so on). Even the program  _Java Preferences_ will work as before.

### Who should *NOT* use this script:

If:

* you are not on Snow Leopard
* or if you totally uninstalled Java 6

Then this script should not work and should not be used, unless you truly understand what you are doing.

### How to use:

1. Download [main.scpt](https://github.com/Fornost461/JavaDowngrader/blob/master/main.scpt)
2. Double-click on it to open with the AppleScript Editor
3. Click _Run_
4. Follow the instructions.


### How it works:

A shell command is generated into the variable *command*. Then, it is run through a call to the Terminal.

For further information about what this command does, read [manualdowngrade.md](https://github.com/Fornost461/JavaDowngrader/blob/master/manualdowngrade.md).
