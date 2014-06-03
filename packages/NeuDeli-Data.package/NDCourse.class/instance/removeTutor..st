as yet unclassified
removeTutor: aUser
	self tutors remove: aUser ifAbsent: [].
	self privilegedTutors remove: aUser ifAbsent:[]