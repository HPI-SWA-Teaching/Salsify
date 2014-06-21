testing
isPrivilegedTutorIn: aCourse
	aCourse privilegedTutors
				detect: [:each | each = self]
				ifNone: [^false].
		^true
	