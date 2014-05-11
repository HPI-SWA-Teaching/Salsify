rendering
renderTitleOfAssignmentPart: eachPart on: html
	html tableData
			class: 'title';
			with: [	html text: eachPart title.
					html emphasis: eachPart extensionString]