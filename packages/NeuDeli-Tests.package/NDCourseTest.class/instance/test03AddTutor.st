as yet unclassified
test03AddTutor
	self course addTutor: self aTutor.
	self assert: (self course tutors includes: self aTutor)