rendering
renderDeadlineOfAssignment: anAssignment forGroup: aGroup on: html
	(anAssignment getDeadlineFor: aGroup) 
		ifNotNil: [html span
						class: 'date';
						with: (', Deadline: ', (anAssignment getDeadlineFor: aGroup) yyyymmdd)]