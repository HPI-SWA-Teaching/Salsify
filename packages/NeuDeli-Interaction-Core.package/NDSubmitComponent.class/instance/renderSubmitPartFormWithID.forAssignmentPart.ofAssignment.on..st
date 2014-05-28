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
							ifTrue: [html submitButton with: 'hochladen']
							ifFalse: [html anchor
									class: 'button';
											onClick: (html scriptaculous updater
														id: submitFormID;
														callback: [:r | deletionAllowed ifTrue:
																	[self deleteFileFromSubmission: (anAssignment getSubmissionByGroup: self group) at: eachPart].
																	self renderSubmitPartFormWithID: submitFormID  forAssignmentPart: eachPart ofAssignment: anAssignment on: r]); 
											with: 'Löschen'.
									html text: 'Löschen erlauben'.
									html checkbox
										onChange: (html scriptaculous request
														triggerForm: (html scriptaculous element up: 'form'));
														value: deletionAllowed;
														callback: [:value | deletionAllowed := value]]]]]