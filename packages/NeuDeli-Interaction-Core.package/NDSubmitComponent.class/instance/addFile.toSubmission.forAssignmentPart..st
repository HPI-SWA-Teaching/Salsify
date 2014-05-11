fileHandling
addFile: aFile toSubmission: aSubmission forAssignmentPart: anAssignmentPart
	aFile fileName: Date current yyyymmdd, ' ', (Time current print24 select: [ :c | c isDigit ]), ' - ', anAssignmentPart title asFileName , ' - ', aFile fileName asFileName.
	aSubmission filesByAssignmentPart at: anAssignmentPart add: aFile