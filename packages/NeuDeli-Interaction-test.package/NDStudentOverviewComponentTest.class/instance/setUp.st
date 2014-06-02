running
setUp
	super setUp.
	self loginAsRobert.
	(driver findElementByLinkText: 'Programmiertechnik I Winter 2013') click.
	(driver findElementByLinkText: 'Studentenliste') click