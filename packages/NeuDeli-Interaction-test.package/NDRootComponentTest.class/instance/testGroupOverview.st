tests
testGroupOverview

	self loginAsStudent.
	self assert: (self isTextPresent: 'belegen').
	self enrollLink click.
	self assert: (self isTextPresent: 'belegt als Student.').
	self logoutLink click.
	
	self loginAsJulia.
	self assert: (self isTextPresent: 'belegen').
	self enrollLink click.
	self assert: (self isTextPresent: 'belegt als Student.').
	
	self courseLink click.

	self assert: (self isTextPresent: 'Gruppe festlegen').
	self groupSelector click.
	self kathrinGroupOption click.
	self assert: (self isTextPresent: 'Kathrin Mao').
	self assert: (self isTextPresent: 'Julia Wachtel').
	self logoutLink click.
	
	self loginAsRobert.
	self courseLink click.
	self groupLink click.
	self assert: (self isTextPresent: 'Kathrin Mao'). 
	self assert: (self isTextPresent: 'Julia Wachtel')
	