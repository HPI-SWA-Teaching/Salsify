tests
test01UserIsPrivilegedTutor
	| user |
	user := SfUser new.
	self assert: (user isPrivilegedTutorIn: self course) not.
	self course addPrivilegedTutor: user .
	self assert: (user isPrivilegedTutorIn: self course).
	self assert: (user isTutorIn: self course) not