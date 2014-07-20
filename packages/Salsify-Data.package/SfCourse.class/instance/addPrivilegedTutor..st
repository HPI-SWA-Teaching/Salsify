adding
addPrivilegedTutor: aSfUser
	(aSfUser isPrivilegedTutorIn: self) not
		ifTrue: [self privilegedTutors add: aSfUser]