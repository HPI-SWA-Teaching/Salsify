as yet unclassified
allStudents
	^self class users select: [:each | each isAdmin not]