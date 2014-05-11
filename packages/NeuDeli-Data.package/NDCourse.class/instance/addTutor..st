as yet unclassified
addTutor: aUser
	(aUser isTutorIn: self)
		ifFalse: [self tutors add: aUser]