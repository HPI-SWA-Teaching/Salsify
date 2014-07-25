as yet unclassified
createFakeSubmission
	| course |
	course := self class courses detect: [:each | each title = 'Softwaretechnik'].
	course groups do: [:each |
						(course assignments  detect: [:assignment | assignment title = 'Uebung1'])
							submissionsByGroup at: each put: SfSubmission new]