as yet unclassified
createFakeCourses
	| aCourse |
	self class clearCourses.
	aCourse := SfCourse new
			title: 'Softwarearchitektur';
			year: 2013;
			isInSummer: false;
			mailinglist: 'swa13hpi.uni-potsdam.de';
			website: 'http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/software_architektur-1.html';
			published: true.
	self addCourse: aCourse.
	aCourse := SfCourse new title: 'Programmiertechnik I'; year: 2013; isInSummer: false;
			mailinglist: 'pt13hpi.uni-potsdam.de';
			published: true.
	self addCourse: aCourse.
	aCourse := SfCourse new
			title: 'Softwaretechnik';
			year: 2013;
			isInSummer: true;
			mailinglist: 'swt13hpi.uni-potsdam.de';
			website: 'http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/software_architektur-1.html';
			published: true;
			addTutor: (self users detect: [ :each | each username = 'Lukas Faber' ]).
	self createFakeAssignment: aCourse.
	aCourse groups do: [ :groups | groups addTutor: (aCourse tutors detect: [ :each | each username = 'Lukas Faber' ]) ].
	self addCourse: aCourse.