checking
isTutorForGroup: aGroup
	aGroup tutors
		detect: [:each | each = self]
		ifNone: [^false].
	^true
	