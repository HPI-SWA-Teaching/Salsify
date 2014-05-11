rendering
renderAssignmentTitleEditorOn: html
	html tableRow: [
		html tableData
				class: 'tdLeft';
				with: [html label: 'Name der Abgabe: '].
		html tableData: [html textInput			
								onChange: (html scriptaculous updater
												id: 'assignmentEditorForm';
												callback: [:render | self parent renderAssignmentEditorsOn: render];
												triggerForm: 'assignmentEditorForm';
												onStatus: 200 do: 'saveNotification("assignmentEditorForm")');
								value: self assignment title;
								callback: [:value | self validateAssignmentTitle: value]]]