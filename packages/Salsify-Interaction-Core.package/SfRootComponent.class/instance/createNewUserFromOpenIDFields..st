openID
createNewUserFromOpenIDFields: requestFields
	| email firstname lastname identity user |
	identity := requestFields at: 'openid.identity' 
							ifAbsent: [self showError: 'Login Fehlgeschlagen: Ungültige OpenID-Antwort.'. ^self].
	
	user:= SfUser new identity: identity.

	email := requestFields at: 'openid.ext1.value.E-Mail Address'. 
	firstname := requestFields at: 'openid.ext1.value.Given name'.
	lastname := requestFields at: 'openid.ext1.value.Family name'.
	
	(email = '' | firstname = '' | lastname = '') 
		ifTrue: [self showRegisterComponentForUser: user. ^self].

	user email: email;
		username: (firstname,' ',lastname).

	self session database addUser: user.
	self loginUser: user