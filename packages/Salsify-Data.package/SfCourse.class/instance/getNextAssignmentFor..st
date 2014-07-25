searching
getNextAssignmentFor: aGroup
	| nextDate assignementsOfGroup |
	assignementsOfGroup :=((self assignments select: [:each | (each getDeadlineFor: aGroup) >= Date current])
		 collect: [ :each | each getDeadlineFor: aGroup ]).
	assignementsOfGroup ifNotEmpty:
	[nextDate := assignementsOfGroup min].
	^ self assignments detect: [ :each | each = nextDate] ifNone: [^nil]