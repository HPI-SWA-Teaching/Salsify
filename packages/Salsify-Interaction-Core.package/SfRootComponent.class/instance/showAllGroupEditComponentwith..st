displaying
showAllGroupEditComponentwith: aCourse
	self contentComponent: (SfAllGroupEditComponent new course: aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Gruppen bearbeiten'