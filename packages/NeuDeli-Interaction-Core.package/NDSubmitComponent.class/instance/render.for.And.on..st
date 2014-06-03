rendering
render: submitFormID for: anAssignment And: anAssignmentPart on: html
	html anchor
		class: 'button';
		onClick: (html scriptaculous updater
		id: submitFormID;
		callback: [	:r | self renderDelete: anAssignment and: anAssignmentPart SeriouslyButtonOn: r withFormID: submitFormID.
						"self
							renderSubmitPartFormWithID: submitFormID 
							forAssignmentPart: anAssignmentPart
							ofAssignment: anAssignment on: r"]);
		with: 'Löschen'