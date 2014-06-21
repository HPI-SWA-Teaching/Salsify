fileHandling
addFile: aFile toSubmission: aSubmission ofAssignmentPart: anAssignmentPart
	aFile fileName: Date current yyyymmdd, ' ', (Time current print24 select: [ :c | c isDigit ]), ' - ', anAssignmentPart title asFileName , ' - ', aFile fileName asFileName.
	aSubmission filesByAssignmentPart at: anAssignmentPart add: aFile