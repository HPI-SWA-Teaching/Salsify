as yet unclassified
createFakeCourses
	| tom klaus |
	self class clearCourses.
	tom := NDCourse new
			title: 'Softwarearchitektur';
			year: 2013;
			isInSummer: false;
			mailinglist: 'swa13hpi.uni-potsdam.de';
			website: 'http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/software_architektur-1.html';
			published: true.
	self addCourse: tom.
	klaus := NDCourse new title: 'Programmiertechnik I'; year: 2013; isInSummer: false;
			mailinglist: 'pt13hpi.uni-potsdam.de';
			published:true.
	self addCourse: klaus