as yet unclassified
resetTutorEditors
	self tutorEditors: OrderedCollection new.
	self group tutors
					do: [:each | self addTutorEditor
										selectedTutor: each].
	self addTutorEditor