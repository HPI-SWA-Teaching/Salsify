as yet unclassified
renderGradingOfAssignmentPart: aNDAssignmentPart on: html 	
	html table
		class: 'formTable';
		with: [ html tableRow: [
	html tableData: [html label class:'points'; with:  'Punkte:'].
	html tableData: [self renderViewGradingFor: aNDAssignmentPart On: html]]] 
	
				"html textInput
						id: 'pointInput';
						name: 'titleName';
						callback: [:value | aNDAssignmentPart points: value];
						value: aNDAssignmentPart points;
						onChange: (
							html scriptaculous updater
							triggerForm: 'pointInput';
							onStatus: 200 do: 'saveNotification(pointInput)')]]]] " 