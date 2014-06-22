as yet unclassified
newWithCourse: aCourse 
	|SfPrivilegedTutorSelectorComponent |
	SfPrivilegedTutorSelectorComponent := self new course: aCourse.
	SfPrivilegedTutorSelectorComponent initializeTutors.
	^SfPrivilegedTutorSelectorComponent