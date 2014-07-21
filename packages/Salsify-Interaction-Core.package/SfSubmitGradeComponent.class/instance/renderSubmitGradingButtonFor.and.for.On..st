as yet unclassified
renderSubmitGradingButtonFor: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: html
	html anchor	 id: 'submitSubmissionGradingButton' ; 
		class: 'button submissionGradingButton';  
		onClick: ( html scriptaculous updater
						id: 'submissionGrading',  aSfAssignmentPart title,  aSfGroup number asString; 
						triggerForm: ('pointForm',  aSfAssignmentPart title, aSfGroup number asString);
						callback: [ :ajaxHtml | self renderViewGradingOf: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: ajaxHtml]); 
						with: [html text: 'Bestätigen'].
