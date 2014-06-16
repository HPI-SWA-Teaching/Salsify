as yet unclassified
addTutorEditor
	^self tutorEditors add: (SfGroupTutorEditComponent new 
										group: self group;
										course: self course;
										parent: self)