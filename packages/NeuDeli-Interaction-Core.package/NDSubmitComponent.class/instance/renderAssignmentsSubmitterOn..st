rendering
renderAssignmentsSubmitterOn: html
	| assignmentID |
	assignmentID := 0.
	self parent course removeEmptyAssignments.
	self parent course assignments
				do: [:each | self renderSubmitterForAssignment: each withAssignmentID: assignmentID on: html.
						assignmentID := assignmentID + 1]