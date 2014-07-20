testing
isInGroupOf: aUser inCourse: aCourse
	^ (self findGroupByCourse: aCourse) members includes: aUser