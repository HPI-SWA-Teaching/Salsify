adding
addTutor: aSfUser
	(aSfUser isTutorIn: self) not
		ifTrue: [self tutors add: aSfUser]