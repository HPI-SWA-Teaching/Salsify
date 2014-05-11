tests
testLoginLogout 

	
	self loginAsStudent .
	self assertLoginSuccessful.
	self logoutLink click.
	self assertLogoutSuccessful
