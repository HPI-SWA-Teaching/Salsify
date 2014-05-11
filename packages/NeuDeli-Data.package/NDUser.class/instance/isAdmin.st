accessing
isAdmin
	NDLibrary adminIdentifiers
		detect: [:each | each = self identity]  ifNone: [^false].
	^true