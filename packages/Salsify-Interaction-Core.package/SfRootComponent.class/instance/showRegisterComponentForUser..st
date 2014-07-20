openID
showRegisterComponentForUser: aSfUser
	self contentComponent: (SfRegisterComponent new user: aSfUser).
	self breadCrumbComponent course: nil.
	self breadCrumbComponent currentPageString: 'Neuen Nutzer registrieren'