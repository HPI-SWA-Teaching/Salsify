rendering
renderFileLinksOfAssignmentPart: eachPart fromSubmission: submission on: html
	| files |
	submission 
		ifNotNil: [files := (submission getFilesByAssignmentPart: eachPart)]
		ifNil: [files := nil].
	html listItem 
		with: [files 
				ifNotNil: [self renderFileLinksFor: files on: html]
				ifNil: [html text: eachPart title, ' fehlt!']]