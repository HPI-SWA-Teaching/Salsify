rendering
renderUploaderForAssignmentPart: anAssignmentPart ofAssignment: anAssignment on: html
	| alreadyUploadedfile |
	alreadyUploadedfile := self getAlreadyUploadedFileForAssignmentPart: anAssignmentPart ofAssignment: anAssignment.
	html tableData
			class: 'uploader';
			with: [(alreadyUploadedfile isNil)
					"ifTrue: [((anAssignment getDeadlineFor: self group) >= Date current)"
						ifTrue:[html fileUpload callback: [:file | self uploadFile: file forSubmissionOfAssignmentPart: anAssignmentPart ofAssignment: anAssignment]]
					ifFalse: [html anchor callback: [self downloadFile: alreadyUploadedfile]; with: alreadyUploadedfile fileName]]