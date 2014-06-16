as yet unclassified
showCourseComponentwith: aCourse
	self contentComponent: (SfCourseComponent new course: aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Übersicht'