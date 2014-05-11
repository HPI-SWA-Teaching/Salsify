converting
assertLogoutSuccessful
	self should: [self logoutLink ] raise: BPNoSuchElementException . "erfolgreiches ausloggen"
	self isTextPresent: 'Anmelden'