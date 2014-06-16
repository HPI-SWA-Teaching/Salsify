initialization
initialize
	super initialize.
	self session rootComponent: self.
	self breadCrumbComponent: SfBreadCrumbComponent new.
	self logoutComponent: SfLogoutComponent new.
	self userProfileComponent: SfUserProfileComponent new.
	self session isLoggedIn 
					ifTrue: [self showCourseOverviewComponent];
					ifFalse: [self showLoginComponent]