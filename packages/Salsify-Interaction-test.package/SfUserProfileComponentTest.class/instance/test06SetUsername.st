testing
test06SetUsername
	self userNameTextField clear.
	self userNameTextField sendKeys: 'tpape'.
	self saveButton click.
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click.
	self assert: (self userNameTextField getAttribute: 'value') = 'tpape'