tests
test04removeEmptyExtensions
	| assignmentPart |
	assignmentPart := SfAssignmentPart new.
	assignmentPart addExtension: ''.
	assignmentPart addExtension: ''.
	assignmentPart addExtension: 'a'.
	self assert: (assignmentPart extensions size = 3).
	assignmentPart removeEmptyExtensions.
	self assert: (assignmentPart extensions = #('a') asOrderedCollection)