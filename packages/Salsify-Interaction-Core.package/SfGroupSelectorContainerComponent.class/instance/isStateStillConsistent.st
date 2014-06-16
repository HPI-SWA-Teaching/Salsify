as yet unclassified
isStateStillConsistent
	| myGroup |
	myGroup := self session user findGroupByCourse: self course.
	^self haveSameMembers: myGroup and: (self oldSelectedUsers)