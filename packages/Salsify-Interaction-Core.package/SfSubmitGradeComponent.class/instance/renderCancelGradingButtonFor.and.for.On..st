as yet unclassified
renderCancelGradingButtonFor: aSfAssignmentPart and: aSfSubmission for: aSfGroup On:html
	html anchor	 id: 'cancelSubmissionGradingButton' ; 
		class: 'button submissionGradingButton';  
		onClick: ( html scriptaculous updater
						id: 'submissionGrading',  aSfAssignmentPart title, aSfGroup number asString; 
						callback: [ :ajaxHtml | self renderViewGradingOf: aSfAssignmentPart For: aSfGroup On: ajaxHtml]); 
						with: [html text: 'Abbrechen']