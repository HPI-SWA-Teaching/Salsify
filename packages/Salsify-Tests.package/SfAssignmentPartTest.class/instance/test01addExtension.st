tests
test01addExtension
	| assignmentPart |
	assignmentPart := SfAssignmentPart new.
	self assert: (assignmentPart extensions = #('*') asOrderedCollection).
	assignmentPart addExtension: '.txt'.
	self assert: (assignmentPart extensions includes: '.txt')
	