as yet unclassified
showUploadMaterialComponent: aSfCourse
	self contentComponent: SfUploadMaterialComponent new. 
	self contentComponent course: aSfCourse.
	self breadCrumbComponent currentPageString: 'Materialien'