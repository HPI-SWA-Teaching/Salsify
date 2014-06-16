rendering
renderPermissionDeletionButtonsForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment: anAssignment on: html 
		html table with: [
		html tableRow with: [
			self renderTitleOfAssignmentPart: anAssignmentPart on: html.
			self renderUploaderForAssignmentPart: anAssignmentPart ofAssignment: anAssignment on: html.
			html tableData
					class: 'buttons';
					with: [ 	self renderCancelDeletionButtonForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment: anAssignment on: html. 
							self renderApproveDeletionButtonForAssignmentPart: anAssignmentPart  withFormID: aFormID ofAssignment: anAssignment on: html.]]]