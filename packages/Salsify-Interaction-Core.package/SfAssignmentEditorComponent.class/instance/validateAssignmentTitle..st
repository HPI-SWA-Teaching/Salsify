as yet unclassified
validateAssignmentTitle: aTitle
	self assignment title = aTitle
		ifFalse: [self assignment title: aTitle.
				self parent resetAssignmentEditors]