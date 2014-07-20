searching
getNextAssignmentFor: aGroup
	| nextDate |
	nextDate := ((self assignments select: [:each | (each getDeadlineFor: aGroup) >= Date current])
		 collect: [ :each | each getDeadlineFor: aGroup ]) min.
	^ self assignments detect: [ :each | each = nextDate] ifNone: [^nil]