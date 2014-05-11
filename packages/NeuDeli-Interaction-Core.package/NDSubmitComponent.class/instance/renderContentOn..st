rendering
renderContentOn: html
	self renderHeadingOn: html.
	self renderGroupAndTopicStringOn: html.
	
	html div 
			class: 'submitComponent';
			with: [self renderAssignmentsSubmitterOn: html]