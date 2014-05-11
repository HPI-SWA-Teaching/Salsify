rendering
renderGroupOverviewRowForGroup: aGroup on: html
	html tableRow: [html tableData: [html anchor url: (aGroup mailToLink); with: ('Gruppe ', aGroup number asString)].
					html tableData: [html text: (aGroup asString)].
					html tableData: [aGroup topic ifNotNil: [html text: aGroup topic asString]]]