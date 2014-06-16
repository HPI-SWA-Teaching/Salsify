rendering
renderAssignmentEditorsOn: html
	self resetAssignmentEditors.
	self assignmentEditors do: [:each | html table
											class: 'formTable assignmentEditor';
											with: [html render: each]] separatedBy: [html div class: 'separator']