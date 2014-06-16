tests
testCourseOverview

self loginAsRobert;
	assert: (self isTextPresent: 'Aktuelle Lehrveranstaltungen').