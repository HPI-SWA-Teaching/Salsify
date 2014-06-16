tests
test01addAssignmentPart
	| assignmentPart |
	assignmentPart := SfAssignmentPart new.
	self assignment addAssignmentPart: assignmentPart.
	self assert: (self assignment assignmentParts includes: assignmentPart)