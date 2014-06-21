as yet unclassified
addNewTutor: newlySelectedUser
	newlySelectedUser = self nullUser
		ifFalse: [self course addTutor: newlySelectedUser]