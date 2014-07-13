htmlElement-accessing
userNameTextField
	| userNameTestFieldID |
	userNameTestFieldID := (driver findElementByXPath: '//label[text()="Benutzername:"]') getAttribute: 'for'.
	^driver findElementByXPath: '//input[@id="', userNameTestFieldID, '"]'