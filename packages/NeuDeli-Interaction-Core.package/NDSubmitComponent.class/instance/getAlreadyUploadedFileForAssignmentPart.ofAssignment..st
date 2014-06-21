fileHandling
getAlreadyUploadedFileForAssignmentPart: anAssignmentPart ofAssignment: anAssignment
	| submission |
	submission := anAssignment getSubmissionByGroup: self group.
	submission ifNil: [^nil].
	^submission getMostRecentFileByAssignmentPart: anAssignmentPart "METHOD NOT IMPLEMENTED"
	