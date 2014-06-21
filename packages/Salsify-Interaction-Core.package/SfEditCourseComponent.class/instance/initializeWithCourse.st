initialization
initializeWithCourse
	self initializeRadioButtonTexts.
	
	self resetTutorSelectors.
	"self resetPrivilegedTutorSelectors."
	self privilegedTutorComponent: SfPrivilegedTutorSelectorComponent new. 
	self privilegedTutorComponent course: self course. 
	self resetTopicPoolEditors.
	self resetAssignmentEditors