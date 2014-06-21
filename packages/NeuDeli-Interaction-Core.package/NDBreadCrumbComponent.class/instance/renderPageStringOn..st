as yet unclassified
renderPageStringOn: html
	(self currentPageString = '') 
		ifFalse: [html text: ' » ', currentPageString]