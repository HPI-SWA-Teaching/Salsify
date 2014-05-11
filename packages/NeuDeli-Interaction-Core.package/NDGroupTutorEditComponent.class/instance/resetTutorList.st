initialization
resetTutorList
	self tutorList: OrderedCollection new.
	self tutorList add: self nullTutor.
	self tutorList addAll: (self getFreeCourseTutors).
	self tutorList addAll: (self getFreeLecturers).
	self hasSelectedTutor
		ifTrue: [self tutorList add: self selectedTutor]