rendering
renderSubmitPartFormWithID: submitFormID forAssignmentPart: eachPart ofAssignment: anAssignment andIsOverwriteAction: isOverwriteAction on: html
	"Diese Funktion hat nicht nur einen überwältigenden Namen und einen dummen Kommentar, der aus einhundertneunundsiebzig Zeichen besteht. Nein! Sie ruft sich auch noch selbst auf ;)"
	| alreadyUploadedfile |
	alreadyUploadedfile := self getAlreadyUploadedFileForAssignmentPart: eachPart ofAssignment: anAssignment.
	
	html table with: [
		html tableRow with: [
			self renderTitleOfAssignmentPart: eachPart on: html.
			self renderUploaderForAssignment: anAssignment andAssignmentPart: eachPart andIsOverwriteAction: isOverwriteAction on: html.
			html tableData
					class: 'buttons';
					with: [(alreadyUploadedfile isNil | isOverwriteAction)
							ifTrue: [html submitButton with: 'hochladen']
							ifFalse: [html anchor
											class: 'button';
											onClick: (html scriptaculous updater
															id: submitFormID;
															callback: [:r | self deleteFileFromSubmission: (anAssignment getSubmissionByGroup: self group) at: eachPart. self renderSubmitPartFormWithID: submitFormID  forAssignmentPart: eachPart ofAssignment: anAssignment andIsOverwriteAction: false on: r ]); 
											with: 'löschen']]]]