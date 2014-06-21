rendering
renderGradingPointsForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment: anAssignment on: html

html tableData 
		class: 'points'; 
		with: [anAssignmentPart points
			ifNil: [html text: 'noch nicht bewertet']
			ifNotNil: [html text: 'erreichte Punkte: ', anAssignmentPart points]]