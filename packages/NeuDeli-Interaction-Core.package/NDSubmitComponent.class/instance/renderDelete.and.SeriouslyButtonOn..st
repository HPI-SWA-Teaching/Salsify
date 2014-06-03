rendering
renderDelete: anAssignment and: anAssignementPart SeriouslyButtonOn: html
	html anchor
		onClick: (html scriptaculous updater
						id: 'deleteButtonContainer';
						callback: [:r | self renderDeleteSubmissionButtonOn: r]);
						class: 'button';
						with: 'Doch nicht löschen'.
			
	html anchor 			
		callback: [self deleteFileFromSubmission: (anAssignment getSubmissionByGroup: self group) at: anAssignementPart .
					self session rootComponent showNotification: 'Sie haben ihre Abgabe gelöscht.'];
		class: 'button dangerousButton';
		with: [html text: 'Ja, wirklich löschen!']