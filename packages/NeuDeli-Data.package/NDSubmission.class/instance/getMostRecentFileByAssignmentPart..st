as yet unclassified
getMostRecentFileByAssignmentPart: anAssignmentPart 
	^(filesByAssignmentPart allAt: anAssignmentPart ifAbsent: [^nil]) last