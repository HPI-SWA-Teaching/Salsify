tests
testTutor

self loginAsRobert;
	assert: (self isTextPresent: 'Aktuelle Lehrveranstaltungen').
self courseLink click;
	assert: (self isTextPresent: 'Lehrveranstaltung bearbeiten').
self editButton click;
	assert:(self isTextPresent: 'Titel:').
self tutorSelector click.
self kathrinTutorOption click.
self homeLink click.
self courseLink click.
self assert: (self isTextPresent: 'Kathrin').
self logoutLink click.

self loginAsStudent.
self assert: (self isTextPresent: 'tutor')
