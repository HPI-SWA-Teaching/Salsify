rendering
renderTopicAssignerOn: html
	self renderTopicWishesOn: html.
	html tableRow: [
		html tableData: [html label with: 'Zugeteiltes Thema: '].
		html tableData
				id: 'topicAssigner', self group number asString;
				with: [self renderTopicAssignerSelectOn: html]]