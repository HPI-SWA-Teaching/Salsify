as yet unclassified
renderGradingOfAssignmentPart: aSfAssignmentPart andGroup: aGroupId andSubmission: submission on: html 	
	html table
		class: 'formTable';
		with: [ html tableRow: [
	html tableData: [html label class: 'points'; with: 'Punkte:'].
	html tableData: [self renderViewGradingFor: aSfAssignmentPart andGroup: aGroupId andSubmission: submission On: html]]] 
	