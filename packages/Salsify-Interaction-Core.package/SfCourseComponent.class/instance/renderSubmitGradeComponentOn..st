rendering
renderSubmitGradeComponentOn: html
	(self session user isAdmin | (self session user isTutorIn: self course) |
	(self session user isPrivilegedTutorIn: self course))
		ifTrue: [ self submitGradeComponent renderSubmitGradingFor: self course on: html.]