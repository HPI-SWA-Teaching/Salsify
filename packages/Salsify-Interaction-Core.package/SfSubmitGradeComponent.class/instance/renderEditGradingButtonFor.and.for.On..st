as yet unclassified
renderEditGradingButtonFor: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: html		
	html anchor id: 'submissionGradingButton' ; 
			class: 'button submissionGradingButton';  
			onClick: ( html scriptaculous updater
						id: 'submissionGrading',  aSfAssignmentPart title, aSfGroup number asString; 
						callback: [ :ajaxHtml | self renderEditGradingOf: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: ajaxHtml]); 
						with: [html text: 'Bewerten']
	