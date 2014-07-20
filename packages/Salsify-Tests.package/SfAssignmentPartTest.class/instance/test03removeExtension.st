tests
test03removeExtension
	| assignmentPart |
	assignmentPart := SfAssignmentPart new.
	assignmentPart addExtension: '.txt'.
	assignmentPart removeExtension: '.txt'.
	self assert: (assignmentPart extensions isEmpty)