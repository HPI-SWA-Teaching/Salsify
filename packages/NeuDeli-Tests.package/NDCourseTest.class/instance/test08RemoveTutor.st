as yet unclassified
test08RemoveTutor
	self course tutors add: self aTutor.
	self course removeTutor: self aTutor.
	self assert: (self course tutors includes: self aTutor) not