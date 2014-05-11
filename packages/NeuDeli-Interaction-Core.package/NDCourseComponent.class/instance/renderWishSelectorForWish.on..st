rendering
renderWishSelectorForWish: eachIndex on: html
	html tableRow: [html tableData: [html label: 'Wunsch ', eachIndex asString ,': '].
					html tableData: [html render: (NDPickerTopicSelectorComponent new
													parent: self;
													whichWish: eachIndex;
													group: (self course findGroupByUser: self session user))]]