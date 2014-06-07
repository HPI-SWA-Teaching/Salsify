testing
test04removeEmptyExtensions
	| assignmentPart |
	assignmentPart := NDAssignmentPart new.
	assignmentPart addExtension: ''.
	assignmentPart addExtension: ''.
	assignmentPart addExtension: 'a'.
	self assert: (assignmentPart extensions size = 4).
	assignmentPart removeEmptyExtensions.
	self assert: (assignmentPart extensions = #('*' 'a') asOrderedCollection)