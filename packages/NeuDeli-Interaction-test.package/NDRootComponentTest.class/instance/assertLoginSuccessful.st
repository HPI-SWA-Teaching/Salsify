converting
assertLoginSuccessful
	self assert: self logoutLink isDisplayed.
	self assert: (self isTextPresent: 'Aktuelle Lehrveranstaltungen')
	