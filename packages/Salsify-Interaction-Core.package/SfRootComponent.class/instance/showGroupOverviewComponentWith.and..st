as yet unclassified
showGroupOverviewComponentWith: aMAReport and: aCourse
	self contentComponent: aMAReport.
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Gruppenübersicht'