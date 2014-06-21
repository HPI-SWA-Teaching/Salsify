as yet unclassified
renderContentOn: html
	self session isLoggedIn
		ifTrue: [html anchor 
						id: 'logoutLink';
						callback: [self session logout. self session rootComponent showLoginComponent];
						with: self session user username, ' ausloggen']