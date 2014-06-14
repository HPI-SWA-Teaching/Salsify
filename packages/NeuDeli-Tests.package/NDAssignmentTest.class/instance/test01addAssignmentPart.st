tests
test01addAssignmentPart
	| assignmentPart |
	assignmentPart := NDAssignmentPart new.
	self assignment addAssignmentPart: assignmentPart.
	self assert: (self assignment assignmentParts includes: assignmentPart)