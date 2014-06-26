as yet unclassified
setUp
	BPRemoteWebDriver serverPort: 4444.
	super setUp.
	(driver findElementByXPath: '//input[@type="text"]') sendKeys: 'SfAssignmentPart'.
	(driver findElementByXPath: '//	*[@id="renderButton"]') click