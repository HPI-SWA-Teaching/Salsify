rendering
renderContentOn: html
	self session isLoggedIn
		ifTrue: [html anchor 
						id: 'userProfileLink';
						callback:[self session rootComponent contentComponent: NDUserprofileOverviewComponent new];
						with: 'Benutzerprofil anzeigen']