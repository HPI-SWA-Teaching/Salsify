testing
test01testEMailLink
	self assert: (((driver findElementByXPath: '//a[@id="mailinglist"]') getAttribute: 'href') 
		= 'mailto:swa13hpi.uni-potsdam.de')
		
	
