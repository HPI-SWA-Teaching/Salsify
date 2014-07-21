as yet unclassified
renderDeadlineOf: aSfAssignment for: aSfGroup on: html
	(aSfAssignment getDeadlineFor: aSfGroup) 
		ifNotNil: [html span
						class: 'date';
						with: (', Deadline: ', (aSfAssignment getDeadlineFor: aSfGroup) yyyymmdd)]