as yet unclassified
renderEditGradingFor: aSfAssignmentPart andGroup: aGroupId andSubmission: submission On: html 

	html form id: 'pointForm', aSfAssignmentPart title, aGroupId asString; 
			with: [html textInput
						id: 'pointInput';
						name: 'titleName';
						callback: [:value | submission savePoints: value ForAssignmentPart: aSfAssignmentPart];
						value: aSfAssignmentPart points].
	self renderCancelButtonFor: aSfAssignmentPart andGroup: aGroupId andSubmission: submission On:html.
	html anchor	 id: 'submitSubmissionGradingButton' ; 
		class: 'button submissionGradingButton';  
		onClick: ( html scriptaculous updater
						id: 'submissionGrading',  aSfAssignmentPart title, aGroupId asString; 
						triggerForm: ('pointForm',  aSfAssignmentPart title, aGroupId asString);
						callback: [ :ajaxHtml | self renderViewGradingFor: aSfAssignmentPart andGroup: aGroupId andSubmission: submission On: ajaxHtml]); 
						with: [html text: 'Bestätigen'].
