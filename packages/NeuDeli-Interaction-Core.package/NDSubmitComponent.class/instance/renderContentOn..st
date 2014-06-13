rendering
renderContentOn: html

	html unorderedList
		class:'submitInfoBox'; 
		with: [	 html heading level:3; 
				class: 'submitHeading'; 
				with: [self renderHeadingWithGroupAndTopicInfoOn: html].
				html div 
					class: 'submitComponent';
					with: [self renderSubmissionOverviewOfAllAssignmentsOn: html]]