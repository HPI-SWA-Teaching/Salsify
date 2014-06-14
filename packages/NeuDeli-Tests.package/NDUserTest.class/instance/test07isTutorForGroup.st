tests
test07isTutorForGroup
	| tutor user group|
	tutor := NDUser new.
	user := NDUser new.
	user enrollIn: self course.
	group := user findGroupByCourse: self course.
	group addTutor: tutor.
	self assert: (tutor isTutorForGroup: group)