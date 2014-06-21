rendering
renderAssignmentPartTitleEditorOn: html
	html textInput
			onChange: (html scriptaculous updater
									id: 'assignmentPartEditors', self assignmentEditorID asString;
									callback: [:render | self parent renderAssignmentPartEditorsOn: render];
									triggerForm: 'assignmentEditorForm';
									onStatus: 200 do: 'saveNotification("assignmentEditorForm");clickHack();');
			value: self assignmentPart title;
			callback: [:value | self validateAssignmentPartTitle: value]