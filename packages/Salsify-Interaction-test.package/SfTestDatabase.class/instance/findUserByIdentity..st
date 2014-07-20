as yet unclassified
findUserByIdentity: anIdentity
	^ self class users
		detect: [:each | each identity = anIdentity]
		ifNone: [nil]