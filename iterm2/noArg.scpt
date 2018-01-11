tell application "Finder"
	if (count of windows) is 0 then
		set text_command to "echo \"no current window\""
	else
		set dir_path to quoted form of (POSIX path of (folder of the front window as alias))
		set text_command to "cd " & dir_path & "; clear;"
	end if
end tell


tell application "iTerm"
	if (count of windows) is 0 then
		create window with default profile command text_command
	else
		tell current window
			create tab with default profile
			tell current session to write text text_command
		end tell
	end if
	activate
end tell