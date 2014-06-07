testing
test03removeExtensions
	| assignmentPart |
	assignmentPart := NDAssignmentPart new.
	assignmentPart addExtension: '.txt'.
	assignmentPart removeExtension: '.txt'.
	self assert: (assignmentPart extensions = #('*') asOrderedCollection)