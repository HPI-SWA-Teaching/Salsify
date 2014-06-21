as yet unclassified
validateGropTutorChange: newlySelectedTutor
	self hasSelectedTutor 
		ifTrue: [self group removeTutor: self selectedTutor].
	
	newlySelectedTutor = self nullTutor
		ifFalse: [self group addTutor: newlySelectedTutor].

	self parent resetTutorEditors