as yet unclassified
showGroupOverviewComponentwith: aCourse
	"self contentComponent: (SfGroupOverviewComponent withCourse:  aCourse)."
	"self halt."
	self contentComponent: aCourse" asComponent".
	self breadCrumbComponent course: aCourse.
	self breadCrumbComponent currentPageString: 'Gruppenübersicht'