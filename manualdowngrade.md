How to manually downgrade to Java 6
==============

_You have to be an administrator to do what follows._

### 1) Open the Terminal

1. Click on the Finder icon located in your dock.
2. Click on Applications tab on sidebar.
3. Click on the Utilities folder.
4. Double-click on the Terminal icon.

### 2) Delete Java 7

In the Terminal window, copy and paste the command below:

sudo rm -Rf /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin ; sudo rm -Rf /Library/Java/JavaVirtualMachines/jdk1.7*.jdk

Then type enter. If your password is asked, type it and type enter.

### 3) Re-enable Java 6

In the Terminal window copy and paste the command below:

sudo ln -sf /System/Library/Java/Support/Deploy.bundle/Contents/Resources/JavaPlugin2_NPAPI.plugin /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin ; sudo ln -sf /System/Library/Frameworks/JavaVM.framework/Commands/javaws /usr/bin/javaws

Then type enter.

## Congratulations, Java 6 should now work!
