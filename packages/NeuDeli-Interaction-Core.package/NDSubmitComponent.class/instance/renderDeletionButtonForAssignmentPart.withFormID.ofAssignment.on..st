rendering
renderDeletionButtonForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment:  anAssignment on: html
	html tableData 
		class: 'buttons'; 
		with: [ html anchor
					class: 'button';
					onClick: (html scriptaculous updater
					id: aFormID;
					callback: [	:r | self renderPermissionDeletionButtonsForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment: anAssignment on: html.]);
					with: 'Löschen']