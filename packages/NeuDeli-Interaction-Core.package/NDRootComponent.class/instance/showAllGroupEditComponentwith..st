as yet unclassified
showAllGroupEditComponentwith: aCourse
	self contentComponent: (NDAllGroupEditComponent new course: aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Gruppen bearbeiten'