openID
showRegisterComponentForUser: aNewNDUser
	self contentComponent: (NDRegisterComponent new user: aNewNDUser).
	self breadCrumbComponent course: nil.
	self breadCrumbComponent currentPageString: 'Neuen Nutzer registrieren'