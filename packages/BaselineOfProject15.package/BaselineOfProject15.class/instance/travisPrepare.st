as yet unclassified
travisPrepare

	Smalltalk at: #ZnZincServerAdaptor ifPresent: [ :cls | cls startOn: 8080 ].
	(WAAdmin register: NDRootComponent asApplicationAt: 'salsify')
		addLibrary: NDLibrary;
		addLibrary: PTDevelopmentLibrary;
		preferenceAt: #sessionClass put: NDSession;
		yourself.