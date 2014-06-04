rendering
renderSubmissionOverviewOfAllAssignmentsOn: html
	| assignmentID |
	assignmentID := 0.
	self parent course removeEmptyAssignments. "UGLY AS HELL"
	self parent course assignments
				do: [:each | self renderSubmissionOverviewForAssignment: each withAssignmentID: assignmentID on: html.
						assignmentID := assignmentID + 1]