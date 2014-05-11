as yet unclassified
getFilesByAssignmentPart: anAssignmentPart 
	^filesByAssignmentPart allAt: anAssignmentPart ifAbsent: [nil]