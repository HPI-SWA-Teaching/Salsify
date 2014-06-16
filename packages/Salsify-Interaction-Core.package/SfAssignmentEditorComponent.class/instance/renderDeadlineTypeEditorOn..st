rendering
renderDeadlineTypeEditorOn: html
	| updater |
	updater := html scriptaculous updater
					id: 'deadlineEditor', self assignmentEditorID asString;
					callback: [:render | self renderDeadlineEditorOn: render];
					triggerForm: 'assignmentEditorForm';
					onStatus: 200 do: 'saveNotification("assignmentEditorForm")'.

	self initializeRadioButtonTexts.
	html radioGroup
		callback: [:value | self validateDeadlineType: value];
		selected: self specificDeadlineText;
			with: [:group | 
					 html radioButton
							group: group;
							value: 'DeadlineGruppenspezifisch';
							onChange: updater.
					html text: 'Gruppenspezifisch'.
					html radioButton
							group: group;
							value: 'DeadlineFuerAlle';
							onChange: updater.
					html text: 'Für alle']