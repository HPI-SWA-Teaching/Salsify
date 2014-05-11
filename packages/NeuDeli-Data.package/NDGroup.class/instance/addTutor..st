as yet unclassified
addTutor: aTutor
	self tutors detect: [:each | each = aTutor] 
		ifNone: [self tutors add: aTutor]