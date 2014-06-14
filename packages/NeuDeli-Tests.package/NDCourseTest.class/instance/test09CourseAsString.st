tests
test09CourseAsString
	| course |
	course := NDCourse new.
	course 
		title: 'Softwaretechnik';
		year: 2014;
		isInSummer: true.
	self assert: (course asString = 'Softwaretechnik Sommer 2014')