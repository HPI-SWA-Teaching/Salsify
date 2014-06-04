rendering
renderRemoverForAssignment: anAssignment andAssignmentPart: eachPart andFormWithID: submitFormID on: html
			|alreadyUploadedFile deletionAllowed |
			deletionAllowed := false.
			alreadyUploadedFile := self getAlreadyUploadedFileForAssignmentPart: eachPart ofAssignment: anAssignment.
			
			html tableData
					class: 'buttons';
					with: [(alreadyUploadedFile isNil)
							ifTrue: [((anAssignment getDeadlineFor: self group) >= Date current)
								ifTrue:[html submitButton with: 'hochladen']]
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
														callback: [:value | deletionAllowed := value]]]