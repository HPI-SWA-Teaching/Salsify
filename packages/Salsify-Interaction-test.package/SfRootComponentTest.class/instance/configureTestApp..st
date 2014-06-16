as yet unclassified
configureTestApp: testApp
	testApp addLibrary: SfLibrary;
			addLibrary: PTDevelopmentLibrary;
			preferenceAt: #sessionClass put: self sessionClass.