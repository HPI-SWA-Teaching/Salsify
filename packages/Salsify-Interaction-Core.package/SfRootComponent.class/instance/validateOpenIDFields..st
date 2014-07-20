openID
validateOpenIDFields: aDictionary
	| email firstname lastname |
	
	aDictionary at: 'openid.identity' ifAbsent: [self showError: 'Login Fehlgeschlagen: Ungültige OpenID-Antwort.'. ^self].
	email := aDictionary at: 'openid.ext1.value.E-Mail Address'. 
	firstname := aDictionary at: 'openid.ext1.value.Given name'.
	lastname := aDictionary at: 'openid.ext1.value.Family name'.
	((email = '' or: [firstname = '']) or: [lastname = '']) 
		ifTrue: [self showRegisterComponentForUser: SfUser new.
				^ self]