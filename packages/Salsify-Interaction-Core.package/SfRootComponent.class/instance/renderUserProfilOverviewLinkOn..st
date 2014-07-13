rendering
renderUserProfilOverviewLinkOn:html

	self session isLoggedIn
		ifTrue: [html anchor 
			id: 'userProfileLink';
			callback:[self contentComponent: self session user asComponent 
				addValidatedForm. self breadCrumbComponent currentPageString: 'Benutzerprofil'];
			with: 'Benutzerprofil anzeigen'] 