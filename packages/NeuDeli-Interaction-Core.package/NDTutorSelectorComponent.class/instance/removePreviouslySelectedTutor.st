as yet unclassified
removePreviouslySelectedTutor
	self selectedUser = self nullUser
		ifFalse: [self course removeTutor: self selectedUser]