running
setUp
	super setUp.
	self loginAsTobias.
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click