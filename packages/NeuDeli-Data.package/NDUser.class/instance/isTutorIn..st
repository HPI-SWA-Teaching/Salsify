testing
isTutorIn: aCourse
	aCourse tutors
		detect: [:each | each = self]
		ifNone: [^false].
	^true
	