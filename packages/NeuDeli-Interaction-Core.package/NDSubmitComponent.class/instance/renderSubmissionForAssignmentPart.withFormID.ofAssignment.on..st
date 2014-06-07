rendering
renderSubmissionForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment: anAssignment on: html
	| alreadyUploadedfile |
	alreadyUploadedfile := self getAlreadyUploadedFileForAssignmentPart: anAssignmentPart ofAssignment: anAssignment.
	html form multipart;
				id: (aFormID); 
				with: [html table with: [
						html tableRow with: [
							self renderTitleOfAssignmentPart: anAssignmentPart on: html.
							self renderUploaderForAssignmentPart: anAssignmentPart ofAssignment: anAssignment on: html.
							(alreadyUploadedfile isNil)
							ifTrue: [ self renderUploadButtonForAssignmentPart: anAssignment withFormID: aFormID ofAssignment: anAssignment on: html.]
							ifFalse: [ ((anAssignment getDeadlineFor: self group) >= Date current)
										ifTrue: [ 
 								self renderDeletionButtonForAssignmentPart: anAssignmentPart withFormID: aFormID ofAssignment:  anAssignment on: html]]]]]