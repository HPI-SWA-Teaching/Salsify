rendering
renderContentOn: html
	self session isLoggedIn
		ifTrue: [html anchor 
						id: 'userProfileLink';
						callback:[self session rootComponent contentComponent: SfUserprofileOverviewComponent new. self session rootComponent breadCrumbComponent currentPageString: 'Benuzterprofil'.];
						with: 'Benutzerprofil anzeigen']