rendering
renderNextDeadlineOn: html
	self userIsEnrolled
		ifTrue: [| assignment group |
				group := self session user findGroupByCourse: self course.
	
				group ifNotNil: [assignment := self course getNextAssignmentFor: group.
								assignment ifNotNil: [html text: 'Nächste Deadline: '.
													html text: assignment title.
													html text: ' (', (assignment getDeadlineFor: group) yyyymmdd, ' 23:59)']]]