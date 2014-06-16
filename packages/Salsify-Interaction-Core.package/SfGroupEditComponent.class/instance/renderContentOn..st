rendering
renderContentOn: html
	html div
		class: 'courseInfoBox';
		with: [	self renderHeadingOn: html.
				html table with: [self renderTopicOn: html.
								self renderTutorAssignerOn: html]]