tests
test01addExtension
	| assignmentPart |
	assignmentPart := NDAssignmentPart new.
	self assert: (assignmentPart extensions = #('*') asOrderedCollection).
	assignmentPart addExtension: '.txt'.
	self assert: (assignmentPart extensions includes: '.txt')
	