initialization
resetAssignmentPartEditors	
	self assignment removeEmptyAssignmentParts.
	self assignment addAssignmentPart: (NDAssignmentPart new).
	
	self assignmentPartEditors: OrderedCollection new.
	self assignment assignmentParts 
		do: [:each | self addAssignmentPartEditor assignmentPart: each].
	
	self distributeAssignmentPartEditorIDs