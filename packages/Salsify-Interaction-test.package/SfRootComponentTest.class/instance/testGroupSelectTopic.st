tests
testGroupSelectTopic
	self loginAsRobert.
	self courseLink click.
	self editButton click.
	self radioSelectBox click.
	self selectTextfield sendKeys: 'Tetris'.
	self logoutLink click.
	
	self loginAsJulia.
	self assertLoginSuccessful.
	self assert: (self isTextPresent: 'belegen').
	self enrollLink click.
	self assert: (self isTextPresent: 'belegt als Student.').
	self courseLink click  .
	self assert: (self isTextPresent: 'Themenwahl').
	self groupSelector click. 
	self topicOption click.
	self homeLink click.
	self courseLink click.
	self assert: (self selectedFirstWish getText = 'Tetris').

