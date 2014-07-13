testing
test02UserNameEqualsLoginName
	self assert: ((self userNameTextField getAttribute: 'value') = 'Tobias Pape').