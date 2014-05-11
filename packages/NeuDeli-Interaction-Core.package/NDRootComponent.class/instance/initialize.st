initialization
initialize
	super initialize.
	self session rootComponent: self.
	self breadCrumbComponent: NDBreadCrumbComponent new.
	self logoutComponent: NDLogoutComponent new.
	self session isLoggedIn 
					ifTrue: [self showCourseOverviewComponent];
					ifFalse: [self showLoginComponent]