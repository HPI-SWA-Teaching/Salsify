rendering
showStudentOverviewComponentWith: aCourse
	self session isLoggedIn 
		ifTrue: [self contentComponent: NDStudentOverviewComponent new.
				self contentComponent course: aCourse.
				self breadCrumbComponent course: aCourse.
				self breadCrumbComponent currentPageString: 'Studentenliste']
		ifFalse: [self contentComponent: NDOpenIDLoginComponent new.
				self breadCrumbComponent currentPageString: '']