displaying
showCourseOverviewComponent
	self session isLoggedIn 
		ifTrue: [self contentComponent: SfCourseOverviewComponent new.
				self breadCrumbComponent currentPageString: 'Aktuelle Lehrveranstaltungen']
		ifFalse: [self contentComponent: SfOpenIDLoginComponent new.
				self breadCrumbComponent currentPageString: ''].
	self breadCrumbComponent course: nil