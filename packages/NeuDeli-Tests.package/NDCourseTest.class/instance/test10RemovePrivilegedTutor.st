as yet unclassified
test10RemovePrivilegedTutor
	self course privilegedTutors add: self aPrivilegedTutor.
	self course removePrivilegedTutor: self aPrivilegedTutor.
	self assert: (self course privilegedTutors includes: self aPrivilegedTutor) not.
	self assert: (self course tutors includes: self aPrivilegedTutor) not.