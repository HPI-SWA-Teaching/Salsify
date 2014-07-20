as yet unclassified
test03mailtoLinksArePresent
	| groupLink |
	groupLink := driver findElementByLinkText: 'Gruppe 1'.
	self assert: (((groupLink getAttribute: 'href') trim) = 'mailto:jaspar.mang').
	groupLink := driver findElementByLinkText: 'Gruppe 2'.
	self assert: (((groupLink getAttribute: 'href') trim) = 'mailto:stephan.haarmann')