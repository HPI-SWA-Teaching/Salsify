rendering
renderSubmitterForAssignment: anAssignment withAssignmentID: assignmentID on: html
	| assignmentPartID |
	assignmentPartID := 0.
	anAssignment removeEmptyAssignmentParts.
	
	html heading
			level: 4;
			with: [	html text: anAssignment title.
					html span class: 'date'; with: ('Deadline: ', (anAssignment getDeadlineFor: self group) yyyymmdd, '  23:59')].
					anAssignment assignmentParts 
							do: [:eachPart | | formID |
											formID := 'submitForm', assignmentID asString, '.', assignmentPartID asString.
											html form 
													multipart;
													id: (formID); 
													with: [self renderSubmitPartFormWithID: formID forAssignmentPart: eachPart ofAssignment: anAssignment andIsOverwriteAction: false on: html].
														assignmentPartID := assignmentPartID +1]