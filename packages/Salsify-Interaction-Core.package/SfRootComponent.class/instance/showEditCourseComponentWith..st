as yet unclassified
showEditCourseComponentWith: aCourse
	self contentComponent: (SfEditCourseComponent new course: aCourse).
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Bearbeiten'.