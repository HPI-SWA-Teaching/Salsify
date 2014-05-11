as yet unclassified
testAddAssignmentPart
	self assignment addAssignmentPart: self anAssignmentPart.
	self assert: (self assignment assignmentParts includes: self anAssignmentPart)