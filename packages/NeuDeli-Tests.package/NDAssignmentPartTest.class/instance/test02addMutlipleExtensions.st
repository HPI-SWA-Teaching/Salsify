tests
test02addMutlipleExtensions
	| assignmentPart |
	assignmentPart := NDAssignmentPart new.
	assignmentPart addExtension: '.txt'.
	assignmentPart addExtension: '.zip'.
	self assert: (assignmentPart extensions asBag = #('*' '.txt' '.zip') asBag)