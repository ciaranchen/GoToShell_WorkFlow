tell application "iTerm"
	tell current window
		create tab with default profile
		tell current session
			write text "echo hello"
			write text "cd {query}; clear;"
		end tell
	end tell
	activate
end tell