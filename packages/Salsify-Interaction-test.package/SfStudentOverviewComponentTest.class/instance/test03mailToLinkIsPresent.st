testing
test03mailToLinkIsPresent
	| groupLink |
	groupLink := driver findElementByLinkText: 'florian.meinel'.
	self assert: (((groupLink getAttribute: 'href') trim) = 'mailto:florian.meinel').
	groupLink := driver findElementByLinkText: 'kathrin.mao'.
	self assert: (((groupLink getAttribute: 'href') trim) = 'mailto:kathrin.mao')