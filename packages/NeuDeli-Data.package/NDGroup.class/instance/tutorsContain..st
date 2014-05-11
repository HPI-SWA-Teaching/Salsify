as yet unclassified
tutorsContain: aTutor
	self tutors detect: [:each | each = aTutor] ifNone: [^false].
	^true