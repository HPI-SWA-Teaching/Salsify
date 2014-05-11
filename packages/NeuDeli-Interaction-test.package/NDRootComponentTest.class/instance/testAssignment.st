tests
testAssignment

self loginAsStudent.
self assertLoginSuccessful.
self assert: (self isTextPresent: 'belegen').
self enrollLink click.
self assert: (self isTextPresent: 'belegt als Student.').
self logoutLink click.

self loginAsRobert;
	assert: (self isTextPresent: 'Aktuelle Lehrveranstaltungen').
self courseLink click;
	assert: (self isTextPresent: 'Lehrveranstaltung bearbeiten').
self editButton click;
	assert:(self isTextPresent: 'Abgabe').
self abgabeTextfield sendKeys: 'Lightning Talks'.
self fileTextfield sendKeys: 'Vortragsfolien'.
self homeLink click.
self courseLink click.
self assert: (self isTextPresent: 'Lightning Talks')


