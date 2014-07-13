htmlElement-accessing
userEmailTextField
	| userEmailTextFieldID |
	userEmailTextFieldID := (driver findElementByXPath: '//label[text()="E-Mail:"]') getAttribute: 'for'.
	^driver findElementByXPath: '//input[@id="', userEmailTextFieldID, '"]'