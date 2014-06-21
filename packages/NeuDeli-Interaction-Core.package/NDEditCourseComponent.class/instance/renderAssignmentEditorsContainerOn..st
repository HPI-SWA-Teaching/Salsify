rendering
renderAssignmentEditorsContainerOn: html
	html div
			class: 'courseInfoBox';
			with: [	html heading level: 3; with: [html text: 'Abgaben'].
					html form id: 'assignmentEditorForm';
								with: [self renderAssignmentEditorsOn: html]]