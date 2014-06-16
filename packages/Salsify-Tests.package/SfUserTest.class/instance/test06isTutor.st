tests
test06isTutor
	| tutor |
	tutor := SfUser new.
	self course addTutor: tutor.
	self assert: (tutor isTutorIn: self course)