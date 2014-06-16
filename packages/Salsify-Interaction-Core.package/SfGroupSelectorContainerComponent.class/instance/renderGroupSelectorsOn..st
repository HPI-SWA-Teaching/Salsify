rendering
renderGroupSelectorsOn: html
	self resetGroupSelectors.
	self groupSelectors do: [:each | html render: each] separatedBy: [html text: ', ']