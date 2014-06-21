as yet unclassified
renderEditGradingFor: aNDAssignmentPart On: html 

	html form id: 'pointForm', aNDAssignmentPart title; 
			with: [html textInput
						id: 'pointInput';
						name: 'titleName';
						callback: [:value | aNDAssignmentPart points: value];
						value: aNDAssignmentPart points].
	self renderCancelButtonFor: aNDAssignmentPart On:html.
	html anchor	 id: 'submitSubmissionGradingButton' ; 
		class: 'button submissionGradingButton';  
		onClick: ( html scriptaculous updater
						id: 'submissionGrading',  aNDAssignmentPart title; 
						triggerForm: ('pointForm',  aNDAssignmentPart title);
						callback: [ :ajaxHtml | self renderViewGradingFor: aNDAssignmentPart On: ajaxHtml]); 
						with: [html text: 'Bestätigen'].
