as yet unclassified
validateTutorChange: newlySelectedUser
	self removePreviouslySelectedTutor.
	self addNewTutor: newlySelectedUser.
	