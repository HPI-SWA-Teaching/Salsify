rendering
renderContentOn: html
	html unorderedList
		class:'courseInfoBox'; 
		with: [ 
			"self renderHeadingOn: html."
			self renderGroupAndTopicStringOn: html.
			html div 
				class: 'submitComponent';
				with: [self renderAssignmentsSubmitterOn: html]]