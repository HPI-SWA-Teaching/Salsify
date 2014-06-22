initialization
initializeWithCourse
	self initializeRadioButtonTexts.
	
	self resetTutorSelectors.
	self privilegedTutorComponent: (SfPrivilegedTutorSelectorComponent newWithCourse: self course).
	self resetTopicPoolEditors.
	self resetAssignmentEditors