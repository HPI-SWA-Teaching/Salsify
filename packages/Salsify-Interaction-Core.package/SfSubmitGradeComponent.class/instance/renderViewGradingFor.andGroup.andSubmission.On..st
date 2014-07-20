as yet unclassified
renderViewGradingFor: aSfAssignmentPart andGroup: aGroupId andSubmission: submission On: html 
	html div id: 'submissionGrading', aSfAssignmentPart title, aGroupId asString; class: 'submissionGrading'; with: [  
		html span class: 'points'; 
				with: [ html text: (submission getPointsByAssignmentPart: aSfAssignmentPart)].
		html anchor id: 'submissionGradingButton' ; 
				class: 'button submissionGradingButton';  
				onClick: ( html scriptaculous updater
					id: 'submissionGrading',  aSfAssignmentPart title, aGroupId asString; 
					callback: [ :ajaxHtml | self renderEditGradingFor: aSfAssignmentPart andGroup: aGroupId andSubmission: submission On: ajaxHtml ]); 
				with: [html text: 'Bewerten']].