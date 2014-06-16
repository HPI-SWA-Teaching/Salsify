tests
test10findGroupByUser
	| course group user |
	course := SfCourse new.
	user := SfUser new.
	course addStudent: user.
	group := course groups first.
	self assert: (group = (course findGroupByUser: user))