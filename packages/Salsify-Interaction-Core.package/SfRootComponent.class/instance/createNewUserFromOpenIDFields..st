openID
createNewUserFromOpenIDFields: aDictionary
	| firstname lastname user |
	
	self validateOpenIDFields: aDictionary.
	firstname := aDictionary at: 'openid.ext1.value.Given name'.
	lastname := aDictionary at: 'openid.ext1.value.Family name'.
	user := SfUser new
		identity: (aDictionary at: 'openid.identity');
		email: (aDictionary at: 'openid.ext1.value.E-Mail Address');
		username: (firstname, ' ', lastname);
		yourself.
	self session database addUser: user.
	self loginUser: user