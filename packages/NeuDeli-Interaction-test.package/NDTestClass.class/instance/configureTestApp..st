running
configureTestApp: testApp
	testApp addLibrary: NDLibrary;
			addLibrary: PTDevelopmentLibrary;
			preferenceAt: #sessionClass put: self sessionClass.