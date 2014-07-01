adding
addPrivilegedTutor: aUser
	(aUser isPrivilegedTutorIn: self) 
	ifFalse: [self privilegedTutors add: aUser]