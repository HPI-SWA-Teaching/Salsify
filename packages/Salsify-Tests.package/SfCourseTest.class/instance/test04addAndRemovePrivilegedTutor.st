tests
test04addAndRemovePrivilegedTutor
	| course tutor |
	course := SfCourse new.
	tutor := SfUser new.
	course addPrivilegedTutor: tutor.
	self assert: (course privilegedTutors includes: tutor).
	self assert: (course tutors includes: tutor) not.
	course addPrivilegedTutor: tutor.
	self assert: (course privilegedTutors size = 1).
	course removePrivilegedTutor: tutor.
	self assert: (course privilegedTutors isEmpty).
	self assert: (course tutors includes: tutor) not