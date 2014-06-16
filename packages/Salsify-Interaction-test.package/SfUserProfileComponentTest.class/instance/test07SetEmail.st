testing
test07SetEmail
	self userEmailTextField clear.
	self userEmailTextField sendKeys: 'robert.hirschfeld@hpi.uni-potsdam.de'.
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click.
	self assert: (self userEmailTextField getAttribute: 'value') = 'robert.hirschfeld@hpi.uni-potsdam.de'