as yet unclassified
renderCancelButtonFor: aNDAssignmentPart andGroup: aGroupId andSubmission: submission On:html
	html anchor	 id: 'cancelSubmissionGradingButton' ; 
		class: 'button submissionGradingButton';  
		onClick: ( html scriptaculous updater
						id: 'submissionGrading',  aNDAssignmentPart title, aGroupId asString; 
						callback: [ :ajaxHtml | self renderViewGradingFor: aNDAssignmentPart andGroup: aGroupId andSubmission: submission On: ajaxHtml]); 
						with: [html text: 'Abbrechen']