as yet unclassified
isPrivilegedTutorIn: aCourse
	(self isTutorIn: aCourse)
	ifTrue:[aCourse privilegedTutors
				detect: [:each | each = self]
				ifNone: [^false].
		^true].
	^false
	