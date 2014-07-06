rendering
renderUserProfileOverviewLinkOn: html 
	self session isLoggedIn
		ifTrue: [ html anchor 
				id: 'userProfileLink';
				callback:[ self session rootComponent contentComponent: self session user asComponent addValidatedForm]; 
				with: 'Benutzerprofil anzeigen'] 