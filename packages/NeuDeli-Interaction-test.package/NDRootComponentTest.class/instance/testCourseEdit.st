tests
testCourseEdit
	self loginAsRobert;
		assert: (self isTextPresent: 'Aktuelle Lehrveranstaltungen').
	self courseLink click;
		assert: (self isTextPresent: 'Lehrveranstaltung bearbeiten').
	self editButton click;
		assert:(self isTextPresent: 'Titel:').
	self titelTextfield clear.
	self titelTextfield sendKeys: 'Test'.
	self homeLink click.
	self assert: (self isTextPresent: 'Test').
