as yet unclassified
findUserByEmail: anEmail
	^ self class users
		detect: [:each | each email = anEmail]
		ifNone: [nil]