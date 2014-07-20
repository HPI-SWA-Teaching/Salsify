displaying
showGroupOverviewComponentwith: aCourse
	self contentComponent: (SfGroupOverviewComponent withCourse:  aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Gruppenübersicht'