repeat
	tell application "System Events"
		
		if (get name of every application process) contains "loginwindow" then
			
			if exists (window 1 of application process "loginwindow") then
				
				#say "found it!"
				
				tell application process "loginwindow" to click button "Cancel" of the window 1 #you may need to adjust "Cancel" based on your macOS language settings
				
				#feel free to uncomment the lines below - they emulate pressing Control key which seemed to help in some situations
				
				#key code 59
				#delay 0.4
				#key code 59
				#delay 0.4
				#key code 59
				
			end if
			
			#say "nothing"
			
		end if
		
	end tell
end repeat