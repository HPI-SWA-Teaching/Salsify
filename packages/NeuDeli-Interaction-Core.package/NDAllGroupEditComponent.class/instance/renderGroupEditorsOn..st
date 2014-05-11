rendering
renderGroupEditorsOn: html
	self resetGroupEditors.
	self groupEditors do: [:each | html render: each]