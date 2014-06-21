as yet unclassified
showGroupOverviewComponentwith: aCourse
	self contentComponent: (NDGroupOverviewComponent withCourse:  aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Gruppenübersicht'