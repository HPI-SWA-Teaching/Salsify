as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: SfLibrary applicationName.
	anHtmlRoot stylesheet url: 'http://fonts.googleapis.com/css?family=Ubuntu:400,700'