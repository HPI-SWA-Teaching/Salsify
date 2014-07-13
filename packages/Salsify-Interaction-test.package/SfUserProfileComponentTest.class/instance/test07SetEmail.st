testing
test07SetEmail
	self userEmailTextField clear.
	self userEmailTextField sendKeys: 'tobias.pape@hpi.de'.
	self saveButton click.
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click.
	self assert: (self userEmailTextField getAttribute: 'value') = 'tobias.pape@hpi.de'