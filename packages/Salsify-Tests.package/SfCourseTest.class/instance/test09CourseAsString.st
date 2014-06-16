tests
test09CourseAsString
	| course |
	course := SfCourse new.
	course 
		title: 'Softwaretechnik';
		year: 2014;
		isInSummer: true.
	self assert: (course asString = 'Softwaretechnik Sommer 2014')