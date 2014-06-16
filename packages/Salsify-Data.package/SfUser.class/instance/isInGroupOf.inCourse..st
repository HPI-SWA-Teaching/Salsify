testing
isInGroupOf: aUser inCourse: aCourse
	| group |
	group := aUser findGroupByCourse: aCourse.
	group members detect: [:each | each = self]
		ifNone: [^false].
	^true