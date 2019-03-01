delay 3.0
tell application "System Events"
	key code 53 using {control down} -- start menu
	delay 0.2
	keystroke "run"
	delay 0.5
	keystroke return
	delay 0.2
	keystroke "systempropertiesperformance.exe"
	delay 0.2
	keystroke return
	delay 0.2
	keystroke "p" -- clear out selections
	delay 0.2
	key code 48 -- tab
	repeat 9 times -- "Show shadows under windows"
		key code 125
	end repeat
	key code 49 -- spacebar
	repeat 3 times -- "Show window contents while dragging"
		key code 125
	end repeat
	key code 49 -- spacebar
	repeat 2 times -- "Smooth edges of screen fonts"
		key code 125
	end repeat
	key code 49 -- spacebar
	key code 48 -- tab to "OK"
	key code 49 -- spacebar
end tell
