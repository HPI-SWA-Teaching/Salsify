as yet unclassified
findUserByIdentity: anIdentity
	^ self class ndUsers
		detect: [:each | each identity = anIdentity]
		ifNone: [nil]