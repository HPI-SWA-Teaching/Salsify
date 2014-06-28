as yet unclassified
showCourseComponentwith: aCourse
	self contentComponent: (SfCourseComponent newWith: aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Übersicht'