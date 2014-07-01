tests
testGroupFreeTopic

	self loginAsRobert.
	self courseLink click.
	self editButton click.
	self radioFreeBox click.
	self logoutLink click.
	
	self loginAsJulia.
	self assertLoginSuccessful.
	self assert: (self isTextPresent: 'belegen').
	self enrollLink click.
	self assert: (self isTextPresent: 'belegt als Student.').
	self courseLink click.
	self assert: (self isTextPresent: 'Themenwahl').
	self textField sendKeys: 'Tetris'.
	self textArea sendKeys: 'Ein tolles Spiel'.
	self homeLink click.
	self courseLink click.
	self assert: ((self textField getAttribute: 'value') = 'Tetris').
	self assert: ((self textArea getAttribute: 'value') = 'Ein tolles Spiel').
