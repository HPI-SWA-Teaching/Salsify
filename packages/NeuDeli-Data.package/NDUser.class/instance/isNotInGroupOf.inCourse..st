as yet unclassified
isNotInGroupOf: aUser inCourse: aCourse
	| group |
	group := aUser findGroupByCourse: aCourse.
	group members detect: [:each | each = self]
		ifNone: [^true].
	^false