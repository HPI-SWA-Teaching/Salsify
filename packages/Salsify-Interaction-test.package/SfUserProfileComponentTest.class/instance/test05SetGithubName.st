testing
test05SetGithubName
	self githubTextField clear.
	self githubTextField sendKeys: 'rhirschfeld'.
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click.
	self assert: (self githubTextField getAttribute: 'value') = 'rhirschfeld'