tests
test10findGroupByUser
	| course group user |
	course := NDCourse new.
	user := NDUser new.
	course addStudent: user.
	group := course groups first.
	self assert: (group = (course findGroupByUser: user))