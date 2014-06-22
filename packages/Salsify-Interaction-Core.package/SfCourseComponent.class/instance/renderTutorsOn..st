rendering
renderTutorsOn: html
	(self session user isAdmin) | (self session user isTutorIn: self course)  | 	(self session user isPrivilegedTutorIn: self course) | 
	(self course isGroupDeadlineOver not)
		ifTrue: [self renderAllTutorsOfCourseOn: html.];
		ifFalse: [ |group| 
				group := self session user findGroupByCourse: self course.
				group ifNotNil:[ self renderTutorsOfGroup: group on: html]] 