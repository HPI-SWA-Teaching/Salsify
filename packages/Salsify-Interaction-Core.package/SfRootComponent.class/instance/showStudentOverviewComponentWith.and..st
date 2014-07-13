displaying
showStudentOverviewComponentWith: aMaReport and: aCourse
	self session isLoggedIn 
		ifTrue: [self contentComponent: aMaReport.
				self breadCrumbComponent course: aCourse.
				self breadCrumbComponent currentPageString: 'Studentenliste']
		ifFalse: [self contentComponent: SfOpenIDLoginComponent new.
				self breadCrumbComponent currentPageString: '']