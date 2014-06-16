tests
test02UserIsTutor
	| user |
	user := SfUser new.
	self assert: (user isTutorIn: self course) not.
	self course addTutor: user.
	self assert: (user isTutorIn: self course)