tests
testUserProfile
	self loginAsRobert.
	self assert: (self isTextPresent: 'Benutzerprofil anzeigen').
	(driver findElementByLinkText: 'Benutzerprofil anzeigen') click.
	self assert: (self isTextPresent: 'Benutzerprofil').
	"self benutzerProfilLink click.
	self assert: (self isTextPresent: 'Softwaretechnik')"