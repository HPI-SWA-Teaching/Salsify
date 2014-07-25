as yet unclassified
renderViewGradingFor: aSfAssignmentPart andGroup: aGroupId On: html 
	html div id: 'submissionGrading', aSfAssignmentPart title; class: 'submissionGrading'; with: [  
		html span class: 'points'; 
				with: [ html text: aSfAssignmentPart points].
		html anchor id: 'submissionGradingButton' ; 
				class: 'button submissionGradingButton';  
				onClick: ( html scriptaculous updater
					id: 'submissionGrading',  aSfAssignmentPart title; 
					callback: [ :ajaxHtml | self renderEditGradingFor: aSfAssignmentPart andGroup: aGroupId On: ajaxHtml ]); 
				with: [html text: 'Bewerten']].