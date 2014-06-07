undefined
removePreviouslySelectedTutor
	self selectedUser = self nullUser
		ifFalse: [self course removePrivilegedTutor: self selectedUser]