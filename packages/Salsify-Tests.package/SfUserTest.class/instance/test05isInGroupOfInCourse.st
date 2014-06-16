tests
test05isInGroupOfInCourse
	| user1 user2 user1group |
	user1 := SfUser new.
	user2 := SfUser new.
	user1 enrollIn: self course.
	user2 enrollIn: self course.
	user1group := user1 findGroupByCourse: self course.
	user1group addMember: user2.
	self assert: (user1 isInGroupOf: user2 inCourse: self course).
	self assert: (user2 isInGroupOf: user1 inCourse: self course).