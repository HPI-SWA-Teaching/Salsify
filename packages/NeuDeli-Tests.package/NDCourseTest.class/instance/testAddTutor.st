as yet unclassified
testAddTutor
	self course addTutor: self aTutor.
	self assert: (self course tutors includes: self aTutor)