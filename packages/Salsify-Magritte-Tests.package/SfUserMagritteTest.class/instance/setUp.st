as yet unclassified
setUp
	BPRemoteWebDriver serverPort: 4444.
	super setUp.
	(driver findElementByXPath: '//input[@type="text"]') sendKeys: 'SfUser'.
	(driver findElementByXPath: '//	*[@id="renderButton"]') click