as yet unclassified
addPrivilegedTutor: aUser
	self privilegedTutors at: aUser username asSymbol put: aUser. 
	self course addPrivilegedTutor: aUser. 
	 
