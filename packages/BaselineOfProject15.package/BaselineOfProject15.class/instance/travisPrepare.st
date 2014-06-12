as yet unclassified
travisPrepare

	Smalltalk at: #ZnZincServerAdaptor ifPresent: [ :cls | cls startOn: 8080 ].
	((Smalltalk at: #WAAdmin) register: (Smalltalk at: #NDRootComponent) asApplicationAt: 'salsify')
		addLibrary: (Smalltalk at: #NDLibrary);
		addLibrary: (Smalltalk at: #PTDevelopmentLibrary);
		preferenceAt: #sessionClass put: (Smalltalk at: #NDSession);
		yourself.
