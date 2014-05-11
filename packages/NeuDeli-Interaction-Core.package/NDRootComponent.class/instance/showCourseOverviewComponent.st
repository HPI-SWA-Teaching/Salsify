as yet unclassified
showCourseOverviewComponent
	self session isLoggedIn 
		ifTrue: [self contentComponent: NDCourseOverviewComponent new.
				self breadCrumbComponent currentPageString: 'Aktuelle Lehrveranstaltungen']
		ifFalse: [self contentComponent: NDOpenIDLoginComponent new.
				self breadCrumbComponent currentPageString: ''].
	self breadCrumbComponent course: nil