as yet unclassified
validateAssignmentPartTitle: aTitle
	self assignmentPart title = aTitle
		ifFalse: [self assignmentPart title: aTitle.
				self parent resetAssignmentPartEditors]