tests
test02addMutlipleExtensions
	| assignmentPart |
	assignmentPart := SfAssignmentPart new.
	assignmentPart addExtension: '.txt'.
	assignmentPart addExtension: '.zip'.
	self assert: (assignmentPart extensions asBag = #('*' '.txt' '.zip') asBag)