initialization
resetPrivilegedTutorSelectors
	self privilegedTutorSelectors: OrderedCollection new.
	self course privilegedTutors do: [:each | self addPrivilegedTutorSelector selectedUser:  each].
	"self addPrivilegedTutorSelector."
	self privilegedTutorSelectors do: [: each | each course: self course]