rendering
renderCancelDeletionButtonForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment: anAssignment on: html
	html anchor
		onClick: (html scriptaculous updater
						id:  aFormID;
						callback: [:r | self renderSubmissionForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment: anAssignment on: r]);
						class: 'button';
						with: 'Doch nicht löschen'.