tests
testCourseDelete
	self loginAsRobert;
		assert: (self isTextPresent: 'Aktuelle Lehrveranstaltungen').
	self courseLink click;
		assert: (self isTextPresent: 'Lehrveranstaltung bearbeiten').
	self editButton
		assert:(self isTextPresent: 'Lehrveranstaltung bearbeiten').
	self deleteLink click.
