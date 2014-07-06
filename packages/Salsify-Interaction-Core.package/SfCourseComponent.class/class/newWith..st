as yet unclassified
newWith: aCourse
	| instance |
	instance := self new.
	instance course: aCourse.
	instance initializeGroupReport.
	instance initializeStudentOverviewReport.
     ^ instance