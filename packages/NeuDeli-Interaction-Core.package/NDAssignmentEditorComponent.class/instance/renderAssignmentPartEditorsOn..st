rendering
renderAssignmentPartEditorsOn: html
	self assignmentPartEditors do: [:each | html render: each]