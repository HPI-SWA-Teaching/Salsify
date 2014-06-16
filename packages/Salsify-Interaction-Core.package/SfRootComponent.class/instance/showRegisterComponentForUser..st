openID
showRegisterComponentForUser: aNewNDUser
	self contentComponent: (SfRegisterComponent new user: aNewNDUser).
	self breadCrumbComponent course: nil.
	self breadCrumbComponent currentPageString: 'Neuen Nutzer registrieren'