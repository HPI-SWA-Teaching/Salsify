rendering
renderTutorIndicatorOn: html
	self userIsTutor 
		ifTrue: [html span
					class:'courseItemStatus';
					with: [html text: 'tutor']]