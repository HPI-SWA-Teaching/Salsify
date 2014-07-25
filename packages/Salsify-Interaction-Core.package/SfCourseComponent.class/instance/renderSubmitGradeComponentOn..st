rendering
renderSubmitGradeComponentOn: html
	(self session user isAdmin | (self session user isTutorIn: self course) |
	(self session user isPrivilegedTutorIn: self course))
		ifTrue: [ self submitGradeComponent renderSubmitGradingForCourse: self course on: html.]