as yet unclassified
createFakeCourses: tutors
	| aCourse |
	self class clearCourses.
	aCourse := SfCourse new
			title: 'Softwarearchitektur';
			year: 2013;
			isInSummer: false;
			mailinglist: 'swa13hpi.uni-potsdam.de';
			website: 'http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/software_architektur-1.html';
			published: true;
			addTutor: tutors first;
			addTutor: tutors second.
	self addCourse: aCourse.
	aCourse := SfCourse new title: 'Programmiertechnik I'; year: 2013; isInSummer: false;
			mailinglist: 'pt13hpi.uni-potsdam.de';
			published:true;
			addStudent: tutors first;
			addStudent: tutors second.
	self addCourse: aCourse.
	aCourse := SfCourse new
			title: 'Softwaretechnik';
			year: 2014;
			isInSummer: true;
			mailinglist: 'swt14hpi.uni-potsdam.de';
			website: 'http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/software_architektur-1.html';
			published: true;
			addTutor: (self class users detect: [ :each | each username = 'Lukas Faber' ]).
	self createFakeAssignment: aCourse.
	self addCourse: aCourse.