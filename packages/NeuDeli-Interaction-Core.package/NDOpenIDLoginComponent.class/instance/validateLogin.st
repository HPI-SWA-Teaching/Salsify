debug-only
validateLogin
	| user |
	user := self session database findUserByIdentity: 'https://openid.hpi.uni-potsdam.de/user/', self username.
	user ifNotNil: [ self session login: user.
					self session rootComponent showCourseOverviewComponent]
		ifNil: [self session rootComponent showError: 'Eingegebener Nutzername oder Passwort ist falsch.']