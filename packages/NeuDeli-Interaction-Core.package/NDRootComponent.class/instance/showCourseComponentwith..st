as yet unclassified
showCourseComponentwith: aCourse
	self contentComponent: (NDCourseComponent new course: aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Übersicht'