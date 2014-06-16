rendering
renderTitleOfAssignmentPart: anAssignmentPart on: html
	html tableData
			class: 'title';
			with: [	html text: anAssignmentPart title.
					html emphasis: anAssignmentPart extensionString]