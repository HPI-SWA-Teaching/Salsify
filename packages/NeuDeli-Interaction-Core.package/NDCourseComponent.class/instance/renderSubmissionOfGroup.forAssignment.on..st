rendering
renderSubmissionOfGroup: aGroup forAssignment: anAssignment on: html
	| submission |
	submission := anAssignment getSubmissionByGroup: aGroup.
	
	self renderGroup: aGroup on: html.
	self renderDeadlineOfAssignment: anAssignment forGroup: aGroup on: html.
	
	submission 
		ifNotNil: [submission isEmpty 
					ifFalse: [self renderZipLinkForSubmission: submission ofAssignment: anAssignment forGroup: aGroup on: html]].
	html unorderedList
			with: [anAssignment assignmentParts 
						do: [: eachPart | self renderFileLinksOfAssignmentPart: eachPart fromSubmission: submission on: html]]