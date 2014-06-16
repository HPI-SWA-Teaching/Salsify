adding
addPrivilegedTutor: aUser
	(aUser isTutorIn: self)
		ifFalse: [self tutors add: aUser].
	(aUser isPrivilegedTutorIn: self)
		ifFalse:[self privilegedTutors add: aUser]