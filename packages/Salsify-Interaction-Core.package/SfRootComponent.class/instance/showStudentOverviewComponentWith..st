rendering
showStudentOverviewComponentWith: aCourse
	self session isLoggedIn 
		ifTrue: [self contentComponent: SfStudentOverviewComponent new.
				self contentComponent course: aCourse.
				self breadCrumbComponent course: aCourse.
				self breadCrumbComponent currentPageString: 'Studentenliste']
		ifFalse: [self contentComponent: SfOpenIDLoginComponent new.
				self breadCrumbComponent currentPageString: '']