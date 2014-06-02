as yet unclassified
createFakeCourses: tutors
	| aCourse |
	self class clearCourses.
	aCourse := NDCourse new
			title: 'Softwarearchitektur';
			year: 2013;
			isInSummer: false;
			mailinglist: 'swa13hpi.uni-potsdam.de';
			website: 'http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/software_architektur-1.html';
			published: true;
			addTutor: tutors first;
			addTutor: tutors second.
	self addCourse: aCourse.
	aCourse := NDCourse new title: 'Programmiertechnik I'; year: 2013; isInSummer: false;
			mailinglist: 'pt13hpi.uni-potsdam.de';
			published:true;
			addStudent: tutors first;
			addStudent: tutors second.
	self addCourse: aCourse