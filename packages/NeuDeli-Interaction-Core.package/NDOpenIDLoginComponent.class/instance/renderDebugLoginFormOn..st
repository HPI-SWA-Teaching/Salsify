debug-only
renderDebugLoginFormOn: html
	html form
		with: [html heading level3; with: 'Debug only: Anmelden ohne openID'.
			html label with: 'Nutzername'.
			html textInput on: #username of: self; value: ''.
			html label with: 'Passwort'.
			html passwordInput callback: [:value | self password: value].
			html submitButton callback: [self validateLogin]; text: 'Anmelden']