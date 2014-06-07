testing
test01UserIsPrivilegedTutor
	self assert:(self aUser isPrivilegedTutorIn: self course) not.
	self course addPrivilegedTutor: aUser.
	self assert:(self aUser isPrivilegedTutorIn: self course)