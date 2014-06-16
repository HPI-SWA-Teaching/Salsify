tests
test07isTutorForGroup
	| tutor user group|
	tutor := SfUser new.
	user := SfUser new.
	user enrollIn: self course.
	group := user findGroupByCourse: self course.
	group addTutor: tutor.
	self assert: (tutor isTutorForGroup: group)