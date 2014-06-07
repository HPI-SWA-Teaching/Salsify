checking
isEnrolledIn: aCourse
	self studentIn
		detect: [:each | each = aCourse]
		ifNone: [^false].
	^true