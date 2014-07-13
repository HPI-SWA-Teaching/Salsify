testing
test05SetGithubName
	self githubTextField clear.
	self githubTextField sendKeys: 'krono'.
	self saveButton click.
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click.
	self assert: (self githubTextField getAttribute: 'value') = 'krono'