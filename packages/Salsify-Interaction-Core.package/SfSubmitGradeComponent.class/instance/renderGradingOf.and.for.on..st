as yet unclassified
renderGradingOf: aSfAssignmentPart and: aSfAssignment for: aSfGroup on: html 	
	|submission| 
	submission := submission := aSfAssignment getSubmissionByGroup: aSfGroup.
	html table
		class: 'formTable';
		with: [ html tableRow: [
	html tableData: [html label class: 'points'; with: 'Punkte:'].
	html tableData: [self renderViewGradingOf: aSfAssignmentPart and: submission for: aSfGroup On: html]]] 
	