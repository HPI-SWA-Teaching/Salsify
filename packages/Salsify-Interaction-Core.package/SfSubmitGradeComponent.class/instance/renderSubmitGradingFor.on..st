as yet unclassified
renderSubmitGradingFor: aSfCourse on: html
	aSfCourse removeEmptyAssignments.
	(aSfCourse assignments isEmpty)
		ifFalse: [
			html div	
			class:'submitInfoBox';
			with: [  
				html heading level: 3; class: 'submissionHeading'; with: 'Abgaben'.
				aSfCourse assignments
					do: [:eachAssignment | self renderSubmissionsFor: eachAssignment of: aSfCourse on: html]]]