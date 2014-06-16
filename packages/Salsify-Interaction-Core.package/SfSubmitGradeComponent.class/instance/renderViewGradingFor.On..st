as yet unclassified
renderViewGradingFor: aNDAssignmentPart On: html 
	html div id: 'submissionGrading',  aNDAssignmentPart title; class: 'submissionGrading'; with: [  
		html span class: 'points'; with:[ html text: aNDAssignmentPart points].
		html anchor id: 'submissionGradingButton' ; 
				class: 'button submissionGradingButton';  
				onClick: ( html scriptaculous updater
					id: 'submissionGrading',  aNDAssignmentPart title; 
					callback: [ :ajaxHtml | self renderEditGradingFor: aNDAssignmentPart On: ajaxHtml ]); 
				with: [html text: 'Bewerten']].