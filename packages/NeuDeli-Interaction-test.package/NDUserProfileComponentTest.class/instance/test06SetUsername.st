testing
test06SetUsername
	self userNameTextField clear.
	self userNameTextField sendKeys: 'rhirschfeld'.
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click.
	self assert: (self userNameTextField getAttribute: 'value') = 'rhirschfeld'