rendering
renderSubmissionsForAssignment: anAssignment on: html
	| groups |
	groups := self course groups.
	self session user isAdmin 
		ifFalse: [groups := groups select: [:each | each tutorsContain: (self session user)]].

	anAssignment removeEmptyAssignmentParts.
	html heading
		level: 3;
		with: [html label: anAssignment title].
	html div
		class: 'submission'; 
		with: [groups
				do: [:eachGroup | self renderSubmissionOfGroup: eachGroup forAssignment: anAssignment on: html]]