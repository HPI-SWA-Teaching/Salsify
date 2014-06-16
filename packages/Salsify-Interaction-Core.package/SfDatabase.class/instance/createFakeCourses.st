resetting
createFakeCourses
	| tom |
	self class clearCourses.
	tom := SfCourse new
			title: 'Softwaretechnik 1';
			year: 2014;
			isInSummer: true;
			mailinglist: 'swa14@hpi.uni-potsdam.de';
			website: 'http://hpi.de/studium/lehrveranstaltungen/it-systems-engineering/lehrveranstaltung/course/2014/softwaretechnik_i-1.html';
			published: true.
	self addCourse: tom.
