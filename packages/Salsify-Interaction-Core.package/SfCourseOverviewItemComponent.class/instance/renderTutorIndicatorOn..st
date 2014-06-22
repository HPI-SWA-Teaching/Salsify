rendering
renderTutorIndicatorOn: html
	(self userIsTutor | self userIsPrivilegedTutor)
		ifTrue: [html span
					class:'courseItemStatus';
					with: [html text: 'Tutor']]