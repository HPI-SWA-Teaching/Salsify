tests
test02addMutlipleExtensions
	| assignmentPart |
	assignmentPart := SfAssignmentPart new.
	assignmentPart addExtension: '.txt'.
	assignmentPart addExtension: '.zip'.
	self assert: (assignmentPart extensions = #('.txt' '.zip') asOrderedCollection)