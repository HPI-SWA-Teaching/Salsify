fileHandling
deleteFileFromSubmission: aSubmission at: anAssignmentPart
	aSubmission filesByAssignmentPart removeKey: anAssignmentPart ifAbsent: []
