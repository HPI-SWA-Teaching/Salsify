as yet unclassified
renderFileLinksOfAssignmentPart: aNDAssignmentPart fromSubmission: aNDSubmission on: html
	| files |
	aNDSubmission 
		ifNotNil: [files := (aNDSubmission getFilesByAssignmentPart: aNDAssignmentPart)]
		ifNil: [files := nil].
		files 
				ifNotNil: [self renderFileLinksFor: files on: html]
				ifNil: [html text: aNDAssignmentPart title, ' fehlt!']