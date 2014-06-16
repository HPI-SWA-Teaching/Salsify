fileHandling
deleteFileOfSubmission: aSubmission for: anAssignmentPart
	aSubmission filesByAssignmentPart removeKey: anAssignmentPart ifAbsent: []
