rendering
renderTutorAssignerSelectsOn: html
	self tutorEditors do: [:each | html render: each]