as yet unclassified
testRemoveEmptyAssignmentParts
	self assignment removeEmptyAssignmentParts.
	self assignment assignmentParts select: [:each | each title = ''].
	self assert: self assignment assignmentParts isEmpty