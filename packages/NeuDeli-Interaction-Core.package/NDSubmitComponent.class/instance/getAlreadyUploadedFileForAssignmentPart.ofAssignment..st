fileHandling
getAlreadyUploadedFileForAssignmentPart: eachPart ofAssignment: anAssignment
	| submission |
	submission := anAssignment getSubmissionByGroup: self group.
	submission ifNil: [^nil].
	^submission getMostRecentFileByAssignmentPart: eachPart
	