rendering
renderApproveDeletionButtonForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment: anAssignment on: html
	html anchor 			
		callback: [self deleteFileOfSubmission: (anAssignment getSubmissionByGroup: self group) for: anAssignmentPart.
					self session rootComponent showNotification: 'Sie haben ihre Abgabe gelöscht.'];
		class: 'button submissionDeleteButton';
		with: [html text: 'Ja, wirklich löschen!']