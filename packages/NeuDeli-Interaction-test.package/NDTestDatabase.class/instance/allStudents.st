as yet unclassified
allStudents
	^self class ndUsers select: [:each | each isAdmin not]