running
setUp 
	super setUp.
	self loginAsRobert.
	(driver findElementByLinkText: 'Softwarearchitektur Winter 2013') click.
	