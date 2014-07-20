adding
addTutor: aTutor
	(self tutors includes: aTutor) not
		ifTrue: [ self tutors add: aTutor ]