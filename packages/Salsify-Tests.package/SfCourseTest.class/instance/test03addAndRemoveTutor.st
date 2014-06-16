tests
test03addAndRemoveTutor
	| course tutor |
	course := SfCourse new.
	tutor := SfUser new.
	course addTutor: tutor.
	course addPrivilegedTutor: tutor.
	self assert: (course tutors includes: tutor).
	course addTutor: tutor.
	self assert: (course tutors size = 1).
	course removeTutor: tutor.
	self assert: (course tutors isEmpty).
	self assert: (course privilegedTutors isEmpty)