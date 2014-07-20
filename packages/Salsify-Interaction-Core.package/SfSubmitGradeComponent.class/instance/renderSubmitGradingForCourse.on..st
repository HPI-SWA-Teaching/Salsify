as yet unclassified
renderSubmitGradingForCourse: aNDCourse on: html
	aNDCourse removeEmptyAssignments.
	(aNDCourse assignments isEmpty)
		ifFalse: [
			html div	
			class:'submitInfoBox';
			with: [  
				html heading level: 3; class: 'submissionHeading'; with: 'Abgaben'.
				aNDCourse assignments
					do: [:eachAssignment | self renderSubmissionsForAssignment: eachAssignment ofCourse: aNDCourse on: html]]]