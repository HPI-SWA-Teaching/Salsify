initialization
initialize
	super initialize.
	self nullTutor: (NDUser new username: '').
	self selectedTutor: self nullTutor