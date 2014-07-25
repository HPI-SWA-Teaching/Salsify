as yet unclassified
renderGradingOfAssignmentPart: aSfAssignmentPart andGroup: aGroupId on: html 	
	html table
		class: 'formTable';
		with: [ html tableRow: [
	html tableData: [html label class: 'points'; with: 'Punkte:'].
	html tableData: [self renderViewGradingFor: aSfAssignmentPart andGroup: aGroupId On: html]]] 
	