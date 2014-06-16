fileHandling
uploadFile: aFile forSubmissionOfAssignmentPart: anAssignmentPart ofAssignment: anAssignment
	| submission|
	submission:= anAssignment getSubmissionByGroup: self group.
	submission ifNil: [submission := SfSubmission new.
					anAssignment addSubmission: submission forGroup: self group].

	(self file: aFile hasAllowedExtensionFor: anAssignmentPart)
		ifFalse: [self session rootComponent showError: 'Dateiendung nicht erlaubt! ', anAssignmentPart extensionString]
		ifTrue: [self addFile: aFile toSubmission: submission ofAssignmentPart: anAssignmentPart]