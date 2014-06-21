as yet unclassified
showEditCourseComponentWith: aCourse
	self contentComponent: (NDEditCourseComponent new course: aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Bearbeiten'.