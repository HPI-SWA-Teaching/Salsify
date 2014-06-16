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
			published:true.
	self addCourse: aCourse