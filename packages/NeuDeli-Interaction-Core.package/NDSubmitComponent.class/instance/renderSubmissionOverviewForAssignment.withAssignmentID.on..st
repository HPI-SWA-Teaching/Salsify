rendering
renderSubmissionOverviewForAssignment: anAssignment withAssignmentID: assignmentID on: html
	| assignmentPartID |
	assignmentPartID := 0.
	anAssignment removeEmptyAssignmentParts. "UGLY AS HELL"
	self renderHeadingWithSubmissionDeadlineForAssignment: anAssignment on: html.
	anAssignment assignmentParts do: [:eachPart | | formID |
					formID := 'submitForm', assignmentID asString, '.', assignmentPartID asString.
					self renderSubmissionForAssignmentPart: eachPart withFormID: formID ofAssignment: anAssignment on: html].
	assignmentPartID := assignmentPartID +1