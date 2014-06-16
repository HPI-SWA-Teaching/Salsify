assignmentPartManaging
removeEmptyAssignmentParts 
	self assignmentParts: (self assignmentParts reject: [:each | each title = ''])