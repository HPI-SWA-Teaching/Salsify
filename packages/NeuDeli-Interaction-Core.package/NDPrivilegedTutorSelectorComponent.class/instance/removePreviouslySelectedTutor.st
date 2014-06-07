as yet unclassified
removePreviouslySelectedTutor
	self selectedUser = self nullUser
	ifFalse: [self course removePrivilegedTutor: self selectedUser]