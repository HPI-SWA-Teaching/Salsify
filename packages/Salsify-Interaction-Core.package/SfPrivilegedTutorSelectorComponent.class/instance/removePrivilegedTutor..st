as yet unclassified
removePrivilegedTutor: aUsername 
	|aUser| 
	aUser := self privilegedTutors removeKey:  aUsername asSymbol ifAbsent: [self nullUser].
	aUser = self nullUser
	ifFalse: [self course removePrivilegedTutor: aUser]