rendering
renderExtensionEditorsOn: html
	html table 
		with: [html tableRow: [html tableData: [html label
													class: 'innerLabel';
													with:'Endungen: '].
							html tableData: [self extensionEditors 
													do: [:each | html render: each]
													separatedBy: [html text: ', ']]]]