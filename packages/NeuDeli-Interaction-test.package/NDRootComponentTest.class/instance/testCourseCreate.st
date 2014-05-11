tests
testCourseCreate
	self loginAsRobert.
	self assert: (self isTextPresent: 'Aktuelle Lehrveranstaltungen').
	self createButton click.
	self assert:(self isTextPresent: 'Lehrveranstaltung bearbeiten').
	self titelTextfield clear.
	self titelTextfield sendKeys: 'Softwaretechnik'.
	self checkBox click.
	self homeLink click.
	self assert: (self isTextPresent: 'Softwaretechnik')