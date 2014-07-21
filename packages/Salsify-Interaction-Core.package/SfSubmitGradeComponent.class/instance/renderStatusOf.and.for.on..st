as yet unclassified
renderStatusOf: aSfAssignment and: aSfAssignmentPart for: aSfGroup on: html
	| files submission |
	(submission := aSfAssignment getSubmissionByGroup: aSfGroup)
		ifNotNil: [files := (submission getFilesByAssignmentPart: aSfAssignmentPart)]
		ifNil: [files := nil].
		files 
			ifNotNil: [self renderFileLinksFor: files on: html]
			ifNil: [html text: aSfAssignmentPart title, ' fehlt!']