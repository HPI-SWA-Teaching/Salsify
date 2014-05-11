rendering
renderAssignmentDeadlineEditorContainerOn: html	
	html tableRow: [
		html tableData
			class: 'tdLeft';
			with: [html label: 'Abgabedeadline: '].
		html tableData 
				id: 'deadlineEditor', self assignmentEditorID asString;
				with: [self renderDeadlineEditorOn: html]] 
