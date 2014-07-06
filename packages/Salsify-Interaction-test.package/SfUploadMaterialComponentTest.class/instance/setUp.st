running
setUp
	super setUp.
	self loginAsRobert.
	(driver findElementByLinkText: 'Materialien') click.