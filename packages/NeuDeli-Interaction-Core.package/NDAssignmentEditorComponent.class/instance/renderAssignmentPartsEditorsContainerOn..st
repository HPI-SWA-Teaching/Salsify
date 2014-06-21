rendering
renderAssignmentPartsEditorsContainerOn: html
	self resetAssignmentPartEditors.

	html tableRow: [
		html tableData
			class: 'tdLeft';
			with: [html label: 'Geforderte Dateien: '].
		html tableData
				id: 'assignmentPartEditors', self assignmentEditorID asString;
				with: [self renderAssignmentPartEditorsOn: html]]
	