as yet unclassified
renderSubmissionsForAssignment: anAssignment ofCourse: aNDCourse on: html
	| groups |
	groups := aNDCourse groups.
	self session user isAdmin 
		ifFalse: [groups := groups select: [:each | each tutorsContain: (self session user)]].

	anAssignment removeEmptyAssignmentParts.
	html div
		class: 'submission'; 
		with: [
			html heading
			level: 3;
			with: [html label: anAssignment title].
			groups
				do: [:each | self renderSubmissionOfGroup: each forAssignment: anAssignment on: html]]