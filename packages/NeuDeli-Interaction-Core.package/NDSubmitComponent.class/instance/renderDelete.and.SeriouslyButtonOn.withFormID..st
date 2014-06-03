rendering
renderDelete: anAssignment and: anAssignmentPart SeriouslyButtonOn: html withFormID: aFormID
		html table with: [
		html tableRow with: [
			self renderTitleOfAssignmentPart: anAssignmentPart on: html.
			self renderUploaderForAssignment: anAssignment andAssignmentPart: anAssignmentPart on: html.
			html tableData
					class: 'buttons';
					with: [
	html anchor
		onClick: (html scriptaculous updater
						id:  aFormID;
						callback: [:r | self renderSubmitPartFormWithID: aFormID forAssignmentPart: anAssignmentPart ofAssignment: anAssignment on: r]);
						class: 'button';
						with: 'Doch nicht löschen'.
			
	html anchor 			
		callback: [self deleteFileFromSubmission: (anAssignment getSubmissionByGroup: self group) at: anAssignmentPart.
					self session rootComponent showNotification: 'Sie haben ihre Abgabe gelöscht.'];
		class: 'button submissionDeleteButton';
		with: [html text: 'Ja, wirklich löschen!']]]]