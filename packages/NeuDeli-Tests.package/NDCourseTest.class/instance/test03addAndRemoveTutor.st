tests
test03addAndRemoveTutor
	| course tutor |
	course := NDCourse new.
	tutor := NDUser new.
	course addTutor: tutor.
	course addPrivilegedTutor: tutor.
	self assert: (course tutors includes: tutor).
	course addTutor: tutor.
	self assert: (course tutors size = 1).
	course removeTutor: tutor.
	self assert: (course tutors isEmpty).
	self assert: (course privilegedTutors isEmpty)