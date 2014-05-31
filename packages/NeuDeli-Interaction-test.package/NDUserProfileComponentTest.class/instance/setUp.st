running
setUp
	super setUp.
	self loginAsRobert.
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click