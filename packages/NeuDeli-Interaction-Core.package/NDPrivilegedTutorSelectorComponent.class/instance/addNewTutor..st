undefined
addNewTutor: newlySelectedUser
	newlySelectedUser = self nullUser
		ifFalse: [self course addPrivilegedTutor: newlySelectedUser]