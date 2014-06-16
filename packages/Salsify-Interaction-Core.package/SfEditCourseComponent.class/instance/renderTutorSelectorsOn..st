rendering
renderTutorSelectorsOn: html
	self tutorSelectors do: [:each | html render: each] separatedBy: [html text: ', ']