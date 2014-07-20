testing
test02testDisjoinedAssessment
	(driver findElementByLinkText: 'Robert Hirschfeld ausloggen') click.
	self loginAsLukas.
	(driver findElementByLinkText: 'Softwaretechnik 1 Sommer 2014') click.
	(driver findElementByXPath: '//[@id=''submissionGradingButton'']') click.
	(driver findElementByXPath: '//input@type = ''text'']') sendKeys: '5'.
	(driver findElementByLinkText: 'Softwaretechnik 1 Sommer 2014') click.
	self assert: ((driver findElementByXPath: '//span[1][Text ()]') ~= (driver findElementByXPath: '//span[2][Text ()]'))