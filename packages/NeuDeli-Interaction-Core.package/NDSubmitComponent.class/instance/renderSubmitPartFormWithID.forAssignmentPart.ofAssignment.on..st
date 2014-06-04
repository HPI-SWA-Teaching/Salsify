rendering
renderSubmitPartFormWithID: submitFormID forAssignmentPart: eachPart ofAssignment: anAssignment on: html
	"Diese Funktion hat nicht nur einen überwältigenden Namen und einen dummen Kommentar, der aus einhundertneunundsiebzig Zeichen besteht. Nein! Sie ruft sich auch noch selbst auf ;)"
	| alreadyUploadedfile deletionAllowed |
	deletionAllowed := false.
	alreadyUploadedfile := self getAlreadyUploadedFileForAssignmentPart: eachPart ofAssignment: anAssignment.

	html table with: [
		html tableRow with: [
			self renderTitleOfAssignmentPart: eachPart on: html.
			self renderUploaderForAssignment: anAssignment andAssignmentPart: eachPart on: html.
			html tableData
					class: 'buttons';
					with: [(alreadyUploadedfile isNil)
							ifTrue: [((anAssignment getDeadlineFor: self group) >= Date current)
								ifTrue:[html submitButton with: 'hochladen']]
							ifFalse: [self render: submitFormID for: anAssignment And: eachPart on: html]]]]