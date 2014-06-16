accessing
isAdmin
	SfLibrary adminIdentifiers
		detect: [:each | each = self identity]  ifNone: [^false].
	^true