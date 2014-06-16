as yet unclassified
findUserByEmail: anEmail
	^ self class ndUsers
		detect: [:each | each email = anEmail]
		ifNone: [nil]