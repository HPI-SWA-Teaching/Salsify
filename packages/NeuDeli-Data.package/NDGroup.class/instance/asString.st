as yet unclassified
asString 
	| groupString |
	groupString := ''.
	self members do: [:each | groupString := groupString, each username] separatedBy: [groupString := groupString, ', '].
	^groupString