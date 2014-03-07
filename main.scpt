(*
	This is free and unencumbered software released into the public domain.
	
	Anyone is free to copy, modify, publish, use, compile, sell, or
	distribute this software, either in source code form or as a compiled
	binary, for any purpose, commercial or non-commercial, and by any
	means.
	
	Please refer to <http://unlicense.org/>.
*)

try
	display dialog "You should close all other applications and check that no other user is logged in. Then, click Launch." buttons {"Cancel", "Launch"} default button 2
	if button returned of the result is "Cancel" then return
	
	--Uninstall Java 7
	set command to "sudo rm -Rf /Library/Internet\\ Plug-Ins/JavaAppletPlugin.plugin >/dev/null 2>&1 & "
	
	--Remove the Java 7 JDK if you installed it
	set command to command & "sudo rm -Rf /Library/Java/JavaVirtualMachines/jdk1.7*.jdk >/dev/null 2>&1 & "
	
	--Re-enable Java 6
	set command to command & "sudo ln -sf /System/Library/Java/Support/Deploy.bundle/Contents/Resources/JavaPlugin2_NPAPI.plugin /Library/Internet\\ Plug-Ins/JavaAppletPlugin.plugin >/dev/null 2>&1 & sudo ln -sf /System/Library/Frameworks/JavaVM.framework/Commands/javaws /usr/bin/javaws >/dev/null 2>&1 & "
	
	--Delete startup daemons, actually these are just empty symlinks
	set command to command & "sudo rm -f /Library/LaunchAgents/com.oracle.java.Java-Updater.plist /Library/LaunchDaemons/com.oracle.java.Helper-Tool.plist >/dev/null 2>&1 &"
	
	--Launch the whole command
	tell application "Terminal" to do shell script command with administrator privileges
	
	display dialog "Java 6 should now work!"
	
	
	
on error errorName number errorNumber
	--(-128) indicates that the user canceled the script execution
	if errorNumber is -128 then
		display dialog "Nothing has been changed." buttons {"OK"} default button 1 giving up after 10
	else
		display dialog "Please report the following error :" & return & "Error " & errorNumber & " : " & errorName
	end if
	return
end try
