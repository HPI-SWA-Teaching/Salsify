testing
test01testEMailLink
	| mailToLink |
	mailToLink := (driver findElementByXPath: '//a[@id="tutormailinglist"]') getAttribute: 'href'.
	self assert: ((mailToLink	= 'mailto:florian.meinel,kathrin.mao,')
			or: [mailToLink = 'mailto:kathrin.mao,florian.meinel,'])
