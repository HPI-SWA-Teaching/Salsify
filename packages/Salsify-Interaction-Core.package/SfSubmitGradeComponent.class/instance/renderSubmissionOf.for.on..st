as yet unclassified
renderSubmissionOf: aSfAssignment for: aSfGroup on: html
	| submission |
	submission := aSfAssignment getSubmissionByGroup: aSfGroup.
	
	self renderGroup: aSfGroup on: html.
	self renderDeadlineOf: aSfAssignment for: aSfGroup on: html.
	submission 
		ifNotNil: [submission isEmpty 
					ifFalse: [self renderZipLinkForSubmission: submission ofAssignment: aSfAssignment forGroup: aSfGroup on: html]].
	self renderContentOf: aSfAssignment for: aSfGroup on: html 																																				
																																					