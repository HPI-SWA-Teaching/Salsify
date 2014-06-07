testing
test02UserIsTutor
	| user |
	user := NDUser new.
	self assert: (user isTutorIn: self course) not.
	self course addTutor: user.
	self assert: (user isTutorIn: self course)