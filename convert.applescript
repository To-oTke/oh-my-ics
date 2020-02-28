on run {input, parameters}
	set theOutput to {}
	tell application "Microsoft PowerPoint" -- work on version 15.15 or newer
		launch
		repeat with i in input
			set t to i as string
			if t ends with ".ppt" then
				set newPath to my makeNewPath(i)
				open i
				save active presentation in newPath as save as PPTX -- save in same folder
				set end of theOutput to newPath as alias
			end if
		end repeat
	end tell
	tell application "Microsoft PowerPoint" -- work on version 15.15 or newer
		quit
	end tell
	return theOutput
end run

on makeNewPath(f)
	set t to f as string
	if t ends with ".pptx" then
		return (text 1 thru -5 of t) & "pptx"
	else
		return (text 1 thru -4 of t) & "pptx"
	end if
end makeNewPath