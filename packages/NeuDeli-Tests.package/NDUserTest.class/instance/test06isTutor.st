testing
test06isTutor
	| tutor |
	tutor := NDUser new.
	self course addTutor: tutor.
	self assert: (tutor isTutorIn: self course)