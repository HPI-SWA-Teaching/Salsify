as yet unclassified
renderSubmissionsFor: aSfAssignment of: aSfCourse on: html
	| groups |
	groups := aSfCourse groups.
	(self session user isAdmin  |
	(self session user isPrivilegedTutorIn: aSfCourse))
		ifFalse: [groups := groups select: [:each | each tutors includes: (self session user)]].

	aSfAssignment removeEmptyAssignmentParts.
	html div
		class: 'submission'; 
		with: [
			html heading
			level: 3;
			with: [html label: aSfAssignment title].
			groups
				do: [:each | self renderSubmissionOf: aSfAssignment for: each on: html]]