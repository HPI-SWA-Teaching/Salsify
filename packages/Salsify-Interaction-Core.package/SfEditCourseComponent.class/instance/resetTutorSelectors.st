initialization
resetTutorSelectors 
	self tutorSelectors: OrderedCollection new.
	self course tutors do: [:each | self addTutorSelector selectedUser:  each].
	self addTutorSelector.
	self tutorSelectors do: [: each | each course: self course]