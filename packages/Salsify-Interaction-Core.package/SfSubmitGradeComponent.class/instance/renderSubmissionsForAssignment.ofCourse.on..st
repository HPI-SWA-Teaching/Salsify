as yet unclassified
renderSubmissionsForAssignment: anAssignment ofCourse: aSfCourse on: html
	| groups |
	groups := aSfCourse groups.
	(self session user isAdmin  |
	(self session user isPrivilegedTutorIn: aSfCourse))
		ifFalse: [groups := groups select: [:each | each tutors includes: (self session user)]].

	anAssignment removeEmptyAssignmentParts.
	html div
		class: 'submission'; 
		with: [
			html heading
			level: 3;
			with: [html label: anAssignment title].
			groups
				do: [:each | self renderSubmissionOfGroup: each forAssignment: anAssignment on: html]]