tests
test01addExtension
	| assignmentPart |
	assignmentPart := SfAssignmentPart new.
	self assert: (assignmentPart extensions isEmpty).
	assignmentPart addExtension: '.txt'.
	self assert: (assignmentPart extensions includes: '.txt')
	