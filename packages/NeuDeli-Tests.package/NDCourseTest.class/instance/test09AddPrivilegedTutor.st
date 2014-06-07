as yet unclassified
test09AddPrivilegedTutor
	self course addPrivilegedTutor: self aPrivilegedTutor.
	self assert: (self course privilegedTutors includes: self aPrivilegedTutor).
	self assert: (self course tutors includes: self aPrivilegedTutor)