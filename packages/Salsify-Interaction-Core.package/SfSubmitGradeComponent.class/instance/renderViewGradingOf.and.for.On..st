as yet unclassified
renderViewGradingOf: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: html 
	html div id: 'submissionGrading', aSfAssignmentPart title, aSfGroup number asString; 
	class: 'submissionGrading'; with: [  
		html span class: 'points'; 
				with: [ html text: (aSfSubmission getPointsByAssignmentPart: aSfAssignmentPart)].
		self renderEditGradingButtonFor: aSfAssignmentPart and: aSfSubmission for: aSfGroup On: html]
	