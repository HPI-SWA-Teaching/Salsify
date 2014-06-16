initialization
initialize
	super initialize.
	self nullTutor: (SfUser new username: '').
	self selectedTutor: self nullTutor