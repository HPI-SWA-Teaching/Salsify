as yet unclassified
renderContentOn: html
	self session isLoggedIn 
		ifTrue: [html div 
					id: 'breadCrumbs';
					with: [	self renderCourseLinkOn: html.
							self renderPageStringOn: html]]