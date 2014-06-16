as yet unclassified
renderCancelButtonFor: aNDAssignmentPart On:html
	html anchor	  id: 'cancelSubmissionGradingButton' ; 
		class: 'button submissionGradingButton';  
		onClick: ( html scriptaculous updater
						id: 'submissionGrading',  aNDAssignmentPart title; 
						callback: [ :ajaxHtml | self renderViewGradingFor: aNDAssignmentPart On: ajaxHtml]); 
						with: [html text: 'Abbrechen']