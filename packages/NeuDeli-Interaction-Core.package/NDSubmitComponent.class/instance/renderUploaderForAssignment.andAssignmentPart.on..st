rendering
renderUploaderForAssignment: anAssignment andAssignmentPart: eachPart  on: html
	| alreadyUploadedfile |
	alreadyUploadedfile := self getAlreadyUploadedFileForAssignmentPart: eachPart ofAssignment: anAssignment.
	html tableData
			class: 'uploader';
			with: [(alreadyUploadedfile isNil)
					ifTrue: [((anAssignment getDeadlineFor: self group) >= Date current)
						ifTrue:[
							html fileUpload callback: [:file | self receiveFile: file forAssignment: anAssignment andAssignmentPart: eachPart]]]
					ifFalse: [html anchor callback: [self downloadFile: alreadyUploadedfile]; with: alreadyUploadedfile fileName]]