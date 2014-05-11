rendering
renderSubmissionsOn: html
	(self session user isAdmin | (self session user isTutorIn: self course))
		ifTrue: [self course removeEmptyAssignments.
				self course assignments isEmpty
					ifFalse: [html heading level: 3; with: 'Abgaben'.
							self course assignments
											do: [:eachAssignment | self renderSubmissionsForAssignment: eachAssignment on: html]]]