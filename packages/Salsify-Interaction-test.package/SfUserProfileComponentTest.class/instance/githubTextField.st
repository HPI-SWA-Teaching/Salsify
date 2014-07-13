htmlElement-accessing
githubTextField
	| githubTextFieldID |
	githubTextFieldID := (driver findElementByXPath: '//label[text()="GitHubName:"]') getAttribute: 'for'.
	^driver findElementByXPath: '//input[@id="', githubTextFieldID, '"]'