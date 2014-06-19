as yet unclassified
travisPrepare

	Smalltalk at: #ZnZincServerAdaptor ifPresent: [ :cls | cls startOn: 8080 ].
	((Smalltalk at: #WAAdmin) register: (Smalltalk at: #SfRootComponent) asApplicationAt: 'salsify')
		addLibrary: (Smalltalk at: #SfLibrary);
		addLibrary: (Smalltalk at: #PTDevelopmentLibrary);
		preferenceAt: #sessionClass put: (Smalltalk at: #SfSession);
		yourself.
