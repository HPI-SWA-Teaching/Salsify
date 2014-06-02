testing
test01testEMailLink
	self assert: (((driver findElementByXPath: '//a[@id="tutormailinglist"]') getAttribute: 'href') 
		= 'mailto:florian.meinel,kathrin.mao,')