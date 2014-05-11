fileHandling
receiveFile: aFile forAssignment: anAssignment andAssignmentPart: anAssignmentPart
	| submission|
	submission:= anAssignment getSubmissionByGroup: self group.
	submission ifNil: [submission := NDSubmission new.
					anAssignment addSubmission: submission forGroup: self group].

	(self file: aFile hasAllowedExtensionFor: anAssignmentPart)
		ifFalse: [self session rootComponent showError: 'Dateiendung nicht erlaubt! ', anAssignmentPart extensionString]
		ifTrue: [self addFile: aFile toSubmission: submission forAssignmentPart: anAssignmentPart]