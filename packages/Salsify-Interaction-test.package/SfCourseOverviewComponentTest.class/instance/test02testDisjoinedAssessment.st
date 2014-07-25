testing
test02testDisjoinedAssessment
	| pointField |
	(driver findElementByLinkText: 'Robert Hirschfeld ausloggen') click.
	self loginAsLukas.
	(driver findElementByLinkText: 'Softwaretechnik Sommer 2014') click.
	(driver findElementByXPath: '//a[@id=''submissionGradingButton'']') click.
	(driver findElementByXPath: '//input[@type = ''text'']') sendKeys: '5'.
	(driver findElementByLinkText: 'Bestätigen') click.
	(driver findElementByLinkText: 'Softwaretechnik Sommer 2014') click.
	pointField := driver findElementsByXPath: '//span[@class="points"]'.
	self assert: (pointField first getText ~= pointField last getText)