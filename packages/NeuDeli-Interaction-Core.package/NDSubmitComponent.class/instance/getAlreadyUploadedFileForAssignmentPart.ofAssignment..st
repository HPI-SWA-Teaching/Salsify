rendering
getAlreadyUploadedFileForAssignmentPart: eachPart ofAssignment: anAssignment
	| submission |
	submission := anAssignment getSubmissionByGroup: self group.
	^submission getMostRecentFileByAssignmentPart: eachPart
	