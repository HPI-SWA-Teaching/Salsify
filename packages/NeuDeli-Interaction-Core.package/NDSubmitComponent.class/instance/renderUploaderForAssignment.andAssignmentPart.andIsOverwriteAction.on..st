rendering
renderUploaderForAssignment: anAssignment andAssignmentPart: eachPart andIsOverwriteAction: isOverwriteAction on: html
	| alreadyUploadedfile |
	alreadyUploadedfile := self getAlreadyUploadedFileForAssignmentPart: eachPart ofAssignment: anAssignment.
	
	html tableData
			class: 'uploader';
			with: [(alreadyUploadedfile isNil | isOverwriteAction)
					ifTrue: [html fileUpload callback: [:file | self receiveFile: file forAssignment: anAssignment andAssignmentPart: eachPart]]
					ifFalse: [html anchor callback: [self downloadFile: alreadyUploadedfile]; with: alreadyUploadedfile fileName]]