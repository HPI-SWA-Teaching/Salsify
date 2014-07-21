as yet unclassified
renderEditGradingOf: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: html 
	html form id: 'pointForm', aSfAssignmentPart title, aSfGroup number asString; 
			with: [html textInput
						id: 'pointInput';
						name: 'titleName';
						callback: [:value | aSfSubmission savePoints: value ForAssignmentPart: aSfAssignmentPart];
						value: aSfAssignmentPart points].
	self renderCancelGradingButtonFor: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: html.
	self renderSubmitGradingButtonFor: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: html 